#!/bin/bash
#SBATCH -n 5 -N 5
#SBATCH -o slurm_output/slurm-%j.out

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p reports-racetrack/$TIMESTAMP



 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_combined_160kb_1core_SMT2 \
					  --ctx-config ctxconfig/ctxconfig.gcc-mcf \
--x86-min-inst-per-ctx 500000000 --epoch-length 100   \
--own-report reports-racetrack/$TIMESTAMP/reports-dir-gcc-mcf/data-racetrack.csv \
--rtmi-report reports-racetrack/$TIMESTAMP/reports-dir-gcc-mcf/inst-racetrack.csv \
                                          --reports-dir reports-racetrack/$TIMESTAMP/reports-dir-gcc-mcf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_combined_160kb_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-xalancbmk \
--x86-min-inst-per-ctx 500000000 --epoch-length 100 \
--own-report reports-racetrack/$TIMESTAMP/reports-dir-gcc-xalancbmk/data-racetrack.csv \
--rtmi-report reports-racetrack/$TIMESTAMP/reports-dir-gcc-xalancbmk/inst-racetrack.csv \
                                          --reports-dir reports-racetrack/$TIMESTAMP/reports-dir-gcc-xalancbmk &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_combined_160kb_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-gcc \
--x86-min-inst-per-ctx 500000000 --epoch-length 100 \
--own-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-gcc/data-racetrack.csv \
--rtmi-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-gcc/inst-racetrack.csv \
                                          --reports-dir reports-racetrack/$TIMESTAMP/reports-dir-lbm-gcc &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_combined_160kb_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-mcf \
--x86-min-inst-per-ctx 500000000 --epoch-length 100 \
--own-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-mcf/data-racetrack.csv \
--rtmi-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-mcf/inst-racetrack.csv \
                                          --reports-dir reports-racetrack/$TIMESTAMP/reports-dir-lbm-mcf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_combined_160kb_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-xalancbmk \
--x86-min-inst-per-ctx 500000000 --epoch-length 100 \
--own-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-xalancbmk/data-racetrack.csv \
--rtmi-report reports-racetrack/$TIMESTAMP/reports-dir-lbm-xalancbmk/inst-racetrack.csv \
                                          --reports-dir reports-racetrack/$TIMESTAMP/reports-dir-lbm-xalancbmk


