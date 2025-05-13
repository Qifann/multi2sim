 #!/bin/bash
#SBATCH -n 5 -N 5
#SBATCH -o slurm_output/slurm-%j.out

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p reports/$TIMESTAMP

multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports/$TIMESTAMP/reports-dir-gcc-mcf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports/$TIMESTAMP/reports-dir-gcc-xalancbmk &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-gcc \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports/$TIMESTAMP/reports-dir-lbm-gcc &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config configuraciones-sample/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports/$TIMESTAMP/reports-dir-lbm-mcf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm-xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports/$TIMESTAMP/reports-dir-lbm-xalancbmk

