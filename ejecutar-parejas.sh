#!/bin/bash
#SBATCH --ntasks 5
#SBATCH --cpus-per-task=1
#SBATCH -o slurm_output/slurm-%j.out

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p reports-parejas/$TIMESTAMP

srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-mcf \
--x86-min-inst-per-ctx 1000000000 --epoch-length 10000000   \
                                          --reports-dir reports-parejas/$TIMESTAMP/reports-dir-gcc-mcf &

srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-xalancbmk \
--x86-min-inst-per-ctx 1000000000 --epoch-length 10000000 \
                                          --reports-dir reports-parejas/$TIMESTAMP/reports-dir-gcc-xalancbmk &

srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-gcc \
--x86-min-inst-per-ctx 1000000000 --epoch-length 10000000 \
                                          --reports-dir reports-parejas/$TIMESTAMP/reports-dir-lbm-gcc &

srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-mcf \
--x86-min-inst-per-ctx 1000000000 --epoch-length 10000000 \
                                          --reports-dir reports-parejas/$TIMESTAMP/reports-dir-lbm-mcf &

srun multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-xalancbmk \
--x86-min-inst-per-ctx 1000000000 --epoch-length 10000000 \
                                          --reports-dir reports-parejas/$TIMESTAMP/reports-dir-lbm-xalancbmk &

wait

