#!/bin/bash

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.perlbench \
--x86-min-inst-per-ctx 5000 --epoch-length 100   \
                                          --reports-dir reports-dir-perlbench


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.bzip2 \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-bzip2

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.astar \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-astar

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.bwaves \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-bwaves

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.cactusADM \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-cactusADM


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.calculix \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-calculix

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.gamess \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-gamess

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.gcc \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-gcc

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.GemsFDTD \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-GemsFDTD

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.gobmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-gobmk

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.gromacs \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-gromacs

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.h264ref \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-h264ref

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.hmmer \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-hmmer

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.lbm \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-lbm

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.leslie3d \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-leslie3d

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.libquantum \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-libquantum

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.mcf \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-mcf

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.milc \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-milc

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.namd \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-namd

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.omnetpp \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-omnetpp

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.povray \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-povray

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.sjeng \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-sjeng

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.soplex \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-soplex

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.sphinx3 \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-sphinx3

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.tonto \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-tonto

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.wrf \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-wrf

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.xalancbmk \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-xalancbmk

 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.zeusmp \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-zeusmp


 multi2sim-4.1/bin/m2s --x86-sim detailed --x86-config configuraciones-sample/cpuconfig_2cores \
                                          --mem-config configuraciones-sample/cacheconf_2nodes_256KB_2mc \
                                          --net-config configuraciones-sample/netconf_2x2_nodes \
                                          --ctx-config ctxconfigs/ctxconfig.dealII \
--x86-min-inst-per-ctx 5000 --epoch-length 100 \
                                          --reports-dir reports-dir-dealII




