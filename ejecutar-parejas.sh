#!/bin/bash

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc-mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-dir-gcc-mcf
exit

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config configuraciones-sample/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfigs/ctxconfig.gcc-xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-gcc-xalancbmk

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config configuraciones-sample/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfigs/ctxconfig.lbm-gcc \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-lbm-gcc

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config configuraciones-sample/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfigs/ctxconfig.lbm-mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-lbm-mcf

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config configuraciones-sample/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfigs/ctxconfig.lbm-xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-lbm-xalancbmk


