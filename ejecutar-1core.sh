#!/bin/bash

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')
REPORTS_DIR="reports-1core-ST/$TIMESTAMP"
mkdir -p "$REPORTS_DIR"

srun --input=none --output="$REPORTS_DIR/gcc/output-%j.txt" --error="$REPORTS_DIR/gcc/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.gcc \
    --x86-max-cycles 1000000000 --epoch-length 500000000 \
    --reports-dir "$REPORTS_DIR/gcc" &

exit # borrar las de arriba tras debug

srun --input=none --output="$REPORTS_DIR/astar/output-%j.txt" --error="$REPORTS_DIR/astar/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.astar \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/astar" &

srun --input=none --output="$REPORTS_DIR/bwaves/output-%j.txt" --error="$REPORTS_DIR/bwaves/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.bwaves \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/bwaves" &

srun --input=none --output="$REPORTS_DIR/bzip2/output-%j.txt" --error="$REPORTS_DIR/bzip2/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.bzip2 \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/bzip2" &

srun --input=none --output="$REPORTS_DIR/cactusADM/output-%j.txt" --error="$REPORTS_DIR/cactusADM/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.cactusADM \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/cactusADM" &

srun --input=none --output="$REPORTS_DIR/calculix/output-%j.txt" --error="$REPORTS_DIR/calculix/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.calculix \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/calculix" &

srun --input=none --output="$REPORTS_DIR/dealII/output-%j.txt" --error="$REPORTS_DIR/dealII/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.dealII \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/dealII" &

srun --input=none --output="$REPORTS_DIR/gamess/output-%j.txt" --error="$REPORTS_DIR/gamess/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.gamess \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gamess" &

srun --input=none --output="$REPORTS_DIR/gcc/output-%j.txt" --error="$REPORTS_DIR/gcc/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.gcc \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gcc" &

srun --input=none --output="$REPORTS_DIR/GemsFDTD/output-%j.txt" --error="$REPORTS_DIR/GemsFDTD/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.GemsFDTD \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/GemsFDTD" &

srun --input=none --output="$REPORTS_DIR/gobmk/output-%j.txt" --error="$REPORTS_DIR/gobmk/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.gobmk \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gobmk" &

srun --input=none --output="$REPORTS_DIR/gromacs/output-%j.txt" --error="$REPORTS_DIR/gromacs/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.gromacs \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gromacs" &

srun --input=none --output="$REPORTS_DIR/h264ref/output-%j.txt" --error="$REPORTS_DIR/h264ref/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.h264ref \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/h264ref" &

srun --input=none --output="$REPORTS_DIR/hmmer/output-%j.txt" --error="$REPORTS_DIR/hmmer/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.hmmer \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/hmmer" &

srun --input=none --output="$REPORTS_DIR/lbm/output-%j.txt" --error="$REPORTS_DIR/lbm/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.lbm \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/lbm" &

srun --input=none --output="$REPORTS_DIR/leslie3d/output-%j.txt" --error="$REPORTS_DIR/leslie3d/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.leslie3d \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/leslie3d" &

srun --input=none --output="$REPORTS_DIR/libquantum/output-%j.txt" --error="$REPORTS_DIR/libquantum/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.libquantum \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/libquantum" &

srun --input=none --output="$REPORTS_DIR/mcf/output-%j.txt" --error="$REPORTS_DIR/mcf/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.mcf \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/mcf" &

srun --input=none --output="$REPORTS_DIR/milc/output-%j.txt" --error="$REPORTS_DIR/milc/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.milc \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/milc" &

srun --input=none --output="$REPORTS_DIR/namd/output-%j.txt" --error="$REPORTS_DIR/namd/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.namd \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/namd" &

srun --input=none --output="$REPORTS_DIR/omnetpp/output-%j.txt" --error="$REPORTS_DIR/omnetpp/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.omnetpp \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/omnetpp" &

srun --input=none --output="$REPORTS_DIR/perlbench/output-%j.txt" --error="$REPORTS_DIR/perlbench/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.perlbench \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/perlbench" &

srun --input=none --output="$REPORTS_DIR/povray/output-%j.txt" --error="$REPORTS_DIR/povray/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.povray \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/povray" &

srun --input=none --output="$REPORTS_DIR/sjeng/output-%j.txt" --error="$REPORTS_DIR/sjeng/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.sjeng \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/sjeng" &

srun --input=none --output="$REPORTS_DIR/soplex/output-%j.txt" --error="$REPORTS_DIR/soplex/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.soplex \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/soplex" &

srun --input=none --output="$REPORTS_DIR/sphinx3/output-%j.txt" --error="$REPORTS_DIR/sphinx3/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.sphinx3 \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/sphinx3" &

srun --input=none --output="$REPORTS_DIR/tonto/output-%j.txt" --error="$REPORTS_DIR/tonto/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.tonto \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/tonto" &

srun --input=none --output="$REPORTS_DIR/wrf/output-%j.txt" --error="$REPORTS_DIR/wrf/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.wrf \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/wrf" &

srun --input=none --output="$REPORTS_DIR/xalancbmk/output-%j.txt" --error="$REPORTS_DIR/xalancbmk/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.xalancbmk \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/xalancbmk" &

srun --input=none --output="$REPORTS_DIR/zeusmp/output-%j.txt" --error="$REPORTS_DIR/zeusmp/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_ST \
    --mem-config memconfig/memconfig_baseline_1core_ST \
    --ctx-config ctxconfig/ctxconfig.zeusmp \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/zeusmp" &

