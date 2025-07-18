from __future__ import print_function
from sys import argv

import sys
import os

def files( path ):
        for file in os.listdir(path):
                if os.path.isfile(os.path.join(path, file)):
                        yield file

def create_file_header( condor_file, m2s_path ):
        condor = open(condor_file, "w")
        print ("+GPBatchJob = true", file=condor, end="\n")
        print ("+LongRunningJob = true", file=condor, end="\n")
        print ("Rank = -LoadAvg", file=condor, end="\n")
        print ("Universe = vanilla", file=condor, end="\n")
        print ("Executable = " + m2s_path + "/bin/m2s", file=condor, end="\n")
        print ("Environment = LD_LIBRARY_PATH=$ENV(LD_LIBRARY_PATH)", file=condor, end="\n\n")


if len(argv) < 4:
        print ("Usage: " + argv[0] + " <ctx_dir> <m2s_root_path> <condor_fname> <extra_args>", end="\n")
        exit()

script, path, m2s_root_path, out_file, extra_args = argv

src_path =  m2s_root_path + "src/"
sim_type = "--x86-sim detailed "
cpu_config = "--x86-config " + src_path + "configuraciones-sample/DDR4_entrelazado/4vias/cpuconfig_baseline_FF "
mem_config = "--mem-config " + src_path + "configuraciones-sample/DDR4_entrelazado/4vias/cacheconf_cache_unificada "
net_config = "--net-config " + src_path + "configuraciones-sample/DDR4_race/4vias/net_4core_baseline "
max_inst = "--x86-min-inst-per-ctx " + str(500000000) + " "
#inst originales 500000000
#ep_length = "--epoch-length " + str(500000000) + " "
#rep_dir = "--reports-dir /nfs/alumnos/hutarsan/reports/cache_unificada/baseline/"
own_report = "--own-report /nfs/alumnos/hutarsan/reports/cache_unificada/baseline/"


i = 0


create_file_header(out_file, m2s_root_path)

for name in files(path):
        if not name.find("ctxconfig.") < 0:
                print ("File: " + name, end="\n")
                ctx_config = "--ctx-config " + path + name + " "
                condor = open(out_file, "a")
                print ("Arguments = " + sim_type + cpu_config + mem_config + net_config + ctx_config + max_inst + own_report +  name.split(".")[1] +".csv"+ extra_args, file=condor, end="\n\n")
                print ("Log = /nfs/alumnos/hutarsan/outputs/cache_unificada/baseline/" + name.split(".")[1] + ".log", file=condor, end="\n")
                print ("Output = /nfs/alumnos/hutarsan/outputs/cache_unificada/baseline/" + name.split(".")[1] + ".out", file=condor, end="\n")
                print ("Error = /nfs/alumnos/hutarsan/outputs/cache_unificada/baseline/" + name.split(".")[1]  + ".err", file=condor, end="\n")

                print ("Queue", file=condor, end="\n\n")
                i = i +1
                        

