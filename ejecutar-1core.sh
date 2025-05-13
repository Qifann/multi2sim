
#!/bin/bash 
#SBATCH -n 5 -N 5 
#SBATCH -o slurm_output/slurm-%j.out

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p reports-1core-SMT2/$TIMESTAMP

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.astar \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-astar &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.bwaves \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-bwaves &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.bzip2 \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-bzip2 &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.cactusADM \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-cactusADM &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.calculix \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-calculix &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.dealII \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-dealII &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gamess \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-gamess &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gcc \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-gcc &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.GemsFDTD \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-GemsFDTD &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gobmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-gobmk &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.gromacs \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-gromacs &


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.h264ref \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-h264ref &


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.hmmer\
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-hmmer &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.lbm \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-lbm &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.leslie3d \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-leslie3d &


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.libquantum \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-libquantum &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-mcf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.milc \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-milc &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.namd \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-namd &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.omnetpp\
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-omnetpp &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.perlbench \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-perlbench &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.povray \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-povray &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.sjeng \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-sjeng &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.soplex \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-soplex &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.sphinx3 \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-sphinx3 &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.tonto \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-tonto &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.wrf \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-wrf &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-xalancbmk &

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config cpuconfig/cpuconfig_baseline_1core_SMT2 \
                                          --mem-config memconfig/memconfig_baseline_1core_SMT2 \
                                          --ctx-config ctxconfig/ctxconfig.zeusmp \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-1core-SMT2/$TIMESTAMP/reports-dir-zeusmp
