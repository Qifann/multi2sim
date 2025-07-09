#!/bin/bash 
#SBATCH --ntasks 29
#SBATCH --cpus-per-task=1
#SBATCH -o slurm_output/slurm-%j.out

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p reports-1core-ST/$TIMESTAMP

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.astar \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-astar &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.bwaves \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-bwaves &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.bzip2 \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-bzip2 &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.cactusADM \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-cactusADM &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.calculix \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-calculix &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.dealII \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-dealII &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.gamess \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-gamess &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.gcc \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-gcc &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.GemsFDTD \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-GemsFDTD &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.gobmk \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-gobmk &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.gromacs \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-gromacs &


 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.h264ref \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-h264ref &


 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.hmmer\
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-hmmer &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.lbm \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-lbm &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.leslie3d \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-leslie3d &


 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.libquantum \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-libquantum &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.mcf \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-mcf &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.milc \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-milc &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.namd \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-namd &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.omnetpp\
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-omnetpp &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.perlbench \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-perlbench &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.povray \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-povray &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.sjeng \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-sjeng &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.soplex \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-soplex &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.sphinx3 \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-sphinx3 &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.tonto \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-tonto &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.wrf \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-wrf &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.xalancbmk \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-xalancbmk &

 srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
                                          --mem-config memconfig/memconfig_baseline_1core_ST \
                                          --ctx-config ctxconfig/ctxconfig.zeusmp \
--x86-min-inst-per-ctx 500000000 --epoch-length 10000000   \
                                          --reports-dir reports-1core-ST/$TIMESTAMP/reports-dir-zeusmp
