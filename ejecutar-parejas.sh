#!/bin/bash

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')
REPORTS_DIR="reports-parejas/$TIMESTAMP"
mkdir -p "$REPORTS_DIR"

srun --input=none --output="$REPORTS_DIR/gcc-mcf/output-%j.txt" --error="$REPORTS_DIR/gcc-mcf/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.gcc-mcf \
    --x86-max-inst 1000000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gcc-mcf" &
exit

srun --input=none --output="$REPORTS_DIR/gcc-mcf/output-%j.txt" --error="$REPORTS_DIR/gcc-mcf/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.gcc-mcf \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gcc-mcf" &

srun --input=none --output="$REPORTS_DIR/gcc-xalancbmk/output-%j.txt" --error="$REPORTS_DIR/gcc-xalancbmk/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.gcc-xalancbmk \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/gcc-xalancbmk" &

srun --input=none --output="$REPORTS_DIR/lbm-gcc/output-%j.txt" --error="$REPORTS_DIR/lbm-gcc/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.lbm-gcc \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/lbm-gcc" &

srun --input=none --output="$REPORTS_DIR/lbm-mcf/output-%j.txt" --error="$REPORTS_DIR/lbm-mcf/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.lbm-mcf \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/lbm-mcf" &

srun --input=none --output="$REPORTS_DIR/lbm-xalancbmk/output-%j.txt" --error="$REPORTS_DIR/lbm-xalancbmk/error-%j.txt" \
    multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
    --mem-config memconfig/memconfig_baseline_1core_SMT2 \
    --ctx-config ctxconfig/ctxconfig.lbm-xalancbmk \
    --x86-min-inst-per-ctx 500000000 --epoch-length 10000000 \
    --reports-dir "$REPORTS_DIR/lbm-xalancbmk" &
