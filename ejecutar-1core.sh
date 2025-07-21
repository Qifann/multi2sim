#!/bin/bash
#SBATCH --ntasks=29
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1G
#SBATCH --time=24:00:00
#SBATCH --output=slurm-output/%j.txt

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')
REPORTS_DIR="reports-1core-ST/$TIMESTAMP"
mkdir -p "$REPORTS_DIR"

benchmarks=(
    astar
    bwaves
    bzip2
    cactusADM
    calculix
    dealII
    gamess
    gcc
    GemsFDTD
    gobmk
    gromacs
    h264ref
    hmmer
    lbm
    leslie3d
    libquantum
    mcf
    milc
    namd
    omnetpp
    perlbench
    povray
    sjeng
    soplex
    sphinx3
    tonto
    wrf
    xalancbmk
    zeusmp
)

for benchmark in "${benchmarks[@]}"; do
    srun -n 1 -c 1 \
    --output=$REPORTS_DIR/$benchmark/output-%J.txt \
    --error=$REPORTS_DIR/$benchmark/error-%J.txt \
    --input=none \
    apptainer exec -c -B .:/mnt m2s.sif \
    unshare -rm bash -c " \
    mkdir /tmp/spec2006 /tmp/upperdir /tmp/workdir; \
    mount -t overlay overlay -o lowerdir=/spec2006,upperdir=/tmp/upperdir,workdir=/tmp/workdir /tmp/spec2006; \
    cd /mnt; \
    multi2sim-4.1/bin/m2s --x86-sim detailed \
    --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.$benchmark \
    --x86-min-inst-per-ctx 500000000 \
    --epoch-length 10000000 \
    --reports-dir $REPORTS_DIR/$benchmark \
    --own-report $REPORTS_DIR/$benchmark/own_report.csv \
    --rtmi-report $REPORTS_DIR/$benchmark/rtmi-report.csv" &
done

wait
exit
