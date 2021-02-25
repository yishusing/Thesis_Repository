//  DOQCS : http://doqcs.ncbs.res.in/ 
//  Accession Name = fig4_synapse 
//  Accession Number = 3 
//  Transcriber = Upinder S. Bhalla, NCBS 
//  Developer = Upinder S. Bhalla, NCBS 
//  Species = Generic mammalian 
//  Tissue = Neuronal 
//  Cell Compartment = Synapse 
//  Notes =  This is the composite model of 4 kinases: PKC, MAPK, PKA and CaMKII and numerous regulatory pathways involved in synaptic signaling. From <a href="http://www.ncbi.nlm.nih.gov:80/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9888852&dopt=Abstract">Bhalla US and Iyengar R. Science (1999) 283(5400):381-7</a>.This model comes from figure 4 of that paper.<br>Demonstration script files for generating the figures in the paper, including figure 4, are available <a href="http://www.ncbs.res.in/~bhalla/ltploop/ltploop/demos/">here</a>. 
 
 //genesis
// kkit Version 11 flat dumpfile
 
// Saved on Mon Aug  7 16:05:51 2006
 
include kkit {argv 1}
 
FASTDT = 0.0005
SIMDT = 0.0005
CONTROLDT = 1
PLOTDT = 0.001
MAXTIME = 2
TRANSIENT_TIME = 2
VARIABLE_DT_FLAG = 0
DEFAULT_VOL = 1.6667e-21
VERSION = 11.0
setfield /file/modpath value /home2/bhalla/scripts/modules
kparms
 
//genesis

initdump -version 3 -ignoreorphans 1
simobjdump doqcsinfo filename accessname accesstype transcriber developer \
  citation species tissue cellcompartment methodology sources \
  model_implementation model_validation x y z
simobjdump table input output alloced step_mode stepsize x y z
simobjdump xtree path script namemode sizescale
simobjdump xcoredraw xmin xmax ymin ymax
simobjdump xtext editable
simobjdump xgraph xmin xmax ymin ymax overlay
simobjdump xplot pixflags script fg ysquish do_slope wy
simobjdump group xtree_fg_req xtree_textfg_req plotfield expanded movealone \
  link savename file version md5sum mod_save_flag x y z
simobjdump geometry size dim shape outside xtree_fg_req xtree_textfg_req x y \
  z
simobjdump kpool DiffConst CoInit Co n nInit mwt nMin vol slave_enable \
  geomname xtree_fg_req xtree_textfg_req x y z
simobjdump kreac kf kb notes xtree_fg_req xtree_textfg_req x y z
simobjdump kenz CoComplexInit CoComplex nComplexInit nComplex vol k1 k2 k3 \
  keepconc usecomplex notes xtree_fg_req xtree_textfg_req link x y z
simobjdump stim level1 width1 delay1 level2 width2 delay2 baselevel trig_time \
  trig_mode notes xtree_fg_req xtree_textfg_req is_running x y z
simobjdump xtab input output alloced step_mode stepsize notes editfunc \
  xtree_fg_req xtree_textfg_req baselevel last_x last_y is_running x y z
simobjdump kchan perm gmax Vm is_active use_nernst notes xtree_fg_req \
  xtree_textfg_req x y z
simobjdump transport input output alloced step_mode stepsize dt delay clock \
  kf xtree_fg_req xtree_textfg_req x y z
simobjdump proto x y z
simundump geometry /kinetics/geometry 0 1e-15 3 sphere "" white black 35 19 0
simundump geometry /kinetics/geometry[1] 0 1.6667e-21 3 sphere "" white black \
  0 0 0
simundump group /kinetics/PKC 0 blue black x 0 0 "" defaultfile defaultfile.g \
  0 0 0 -3.0493 8.2163 0
simundump kpool /kinetics/PKC/PKC-Ca 0 0 3.7208e-17 3.7208e-17 2.2325e-11 \
  2.2325e-11 0 0 6e+05 0 /kinetics/geometry red black -4.0752 1.5108 0
simundump kreac /kinetics/PKC/PKC-act-by-Ca 0 1e-06 0.5 "" white blue -4.0752 \
  -0.12295 0
simundump kreac /kinetics/PKC/PKC-act-by-DAG 0 1.3333e-08 8.6348 "" white \
  blue -2.0612 0.69395 0
simundump kreac /kinetics/PKC/PKC-Ca-to-memb 0 1.2705 3.5026 "" white blue \
  -3.7974 4.2533 0
simundump kreac /kinetics/PKC/PKC-DAG-to-memb 0 1 0.1 "" white blue -2.6168 \
  2.7362 0
simundump kreac /kinetics/PKC/PKC-act-by-Ca-AA 0 2e-09 0.1 "" white blue \
  -0.78797 3.8157 0
simundump kreac /kinetics/PKC/PKC-act-by-DAG-AA 0 2 0.2 "" white blue 1.2492 \
  3.2322 0
simundump kpool /kinetics/PKC/PKC-DAG-AA* 0 0 4.9137e-18 4.9137e-18 \
  2.9482e-12 2.9482e-12 0 0 6e+05 0 /kinetics/geometry cyan blue 0.60098 \
  5.537 0
simundump kpool /kinetics/PKC/PKC-Ca-AA* 0 0 1.75e-16 1.75e-16 1.05e-10 \
  1.05e-10 0 0 6e+05 0 /kinetics/geometry orange blue -0.60278 6.2956 0
simundump kpool /kinetics/PKC/PKC-Ca-memb* 0 0 1.3896e-17 1.3896e-17 \
  8.3376e-12 8.3376e-12 0 0 6e+05 0 /kinetics/geometry pink blue -2.7788 \
  6.529 0
simundump kpool /kinetics/PKC/PKC-DAG-memb* 0 0 9.4352e-21 9.4352e-21 \
  5.6611e-15 5.6611e-15 0 0 6e+05 0 /kinetics/geometry yellow blue -1.8297 \
  5.5078 0
simundump kpool /kinetics/PKC/PKC-basal* 0 0 0.02 0.02 12000 12000 0 0 6e+05 \
  0 /kinetics/geometry pink blue -4.7465 5.5662 0
simundump kreac /kinetics/PKC/PKC-basal-act 0 1 50 "" white blue -4.978 \
  3.0571 0
simundump kpool /kinetics/PKC/PKC-AA* 0 0 1.8133e-17 1.8133e-17 1.088e-11 \
  1.088e-11 0 0 6e+05 0 /kinetics/geometry cyan blue 1.7816 6.8207 0
simundump kreac /kinetics/PKC/PKC-act-by-AA 0 2e-10 0.1 "" white blue -4.9925 \
  -1.8654 0
simundump kpool /kinetics/PKC/PKC-Ca-DAG 0 0 8.4632e-23 8.4632e-23 5.0779e-17 \
  5.0779e-17 0 0 6e+05 0 /kinetics/geometry white blue 0.2306 1.8026 0
simundump kreac /kinetics/PKC/PKC-n-DAG 0 1e-09 0.1 "" white blue -3.0103 \
  -1.9902 0
simundump kpool /kinetics/PKC/PKC-DAG 0 0 1.161e-16 1.161e-16 6.9661e-11 \
  6.9661e-11 0 0 6e+05 0 /kinetics/geometry white blue -0.99631 -1.0857 0
simundump kreac /kinetics/PKC/PKC-n-DAG-AA 0 3e-08 2 "" white blue -1.2278 \
  -2.9529 0
simundump kpool /kinetics/PKC/PKC-DAG-AA 0 0 2.5188e-19 2.5188e-19 1.5113e-13 \
  1.5113e-13 0 0 6e+05 0 /kinetics/geometry white blue 0.62413 0.22715 0
simundump kpool /kinetics/PKC/PKC-cytosolic 0 0 1 1 6e+05 6e+05 0 0 6e+05 0 \
  /kinetics/geometry white blue -6.1315 0.59711 0
simundump kpool /kinetics/DAG 1 0 0 0 0 0 0 0 6e+05 2 /kinetics/geometry \
  green black -3.2051 -4.7168 0
simundump kpool /kinetics/Ca 1 0 0.08 0.08 48000 48000 0 0 6e+05 2 \
  /kinetics/geometry red black -19.3 10.35 0
simundump kpool /kinetics/AA 0 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  darkgreen black -3.2898 -9.3376 0
simundump kpool /kinetics/PKC-active 1 0 2.1222e-16 0.02 12000 12000 0 0 \
  6e+05 2 /kinetics/geometry red black 2.1325 8.477 0
simundump kenz /kinetics/PKC-active/PKC-act-raf 1 0 0 0 0 6e+05 5e-07 16 4 0 \
  0 "" red yellow "" 6.2532 10.549 0
simundump kenz /kinetics/PKC-active/PKC-inact-GAP 1 0 0 0 0 1 1e-05 16 4 0 0 \
  "" red yellow "" 3.4391 11.804 0
simundump kenz /kinetics/PKC-active/PKC-act-GEF 1 0 0 0 0 1 1e-05 16 4 0 0 "" \
  red yellow "" -0.24791 17.264 0
simundump kenz /kinetics/PKC-active/PKC-phosph-neurogranin 1 0 0 0 0 6e+05 \
  1.7e-07 2.34 0.58 0 0 "" red red "" -49.005 -4.4126 0
simundump kenz /kinetics/PKC-active/PKC-phosph-ng-CaM 1 0 0 0 0 6e+05 \
  1.02e-07 1.4 0.35 0 0 "" red red "" -52.441 -1.6274 0
simundump kenz /kinetics/PKC-active/phosph-AC2 1 0 0 0 0 6e+05 1e-06 16 4 0 0 \
  "" red red "" -16.815 -21.28 0
simundump group /kinetics/PLA2 0 darkgreen black x 0 1 "" defaultfile \
  defaultfile.g 0 0 0 -7.3572 -14.209 0
simundump kpool /kinetics/PLA2/PLA2-cytosolic 0 0 0.4 0.4 2.4e+05 2.4e+05 0 0 \
  6e+05 0 /kinetics/geometry yellow darkgreen -11.824 -8.9421 0
simundump kreac /kinetics/PLA2/PLA2-Ca-act 0 1.6667e-06 0.1 "" white \
  darkgreen -11.097 -11.104 0
simundump kpool /kinetics/PLA2/PLA2-Ca* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry yellow darkgreen -8.722 -11.646 0
simundump kenz /kinetics/PLA2/PLA2-Ca*/kenz 0 0 0 0 0 6e+05 2.25e-06 21.6 5.4 \
  0 0 "" red yellow "" -6.0553 -11.667 0
simundump kreac /kinetics/PLA2/PIP2-PLA2-act 0 2e-09 0.5 "" white darkgreen \
  -11.055 -6.7502 0
simundump kpool /kinetics/PLA2/PIP2-PLA2* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan darkgreen -8.6803 -6.2919 0
simundump kenz /kinetics/PLA2/PIP2-PLA2*/kenz 0 0 0 0 0 6e+05 4.6e-06 44.16 \
  11.04 0 0 "" red cyan "" -6.0345 -6.271 0
simundump kreac /kinetics/PLA2/PIP2-Ca-PLA2-act 0 2e-08 0.1 "" white \
  darkgreen -10.097 -7.5002 0
simundump kpool /kinetics/PLA2/PIP2-Ca-PLA2* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan darkgreen -8.3261 -7.896 0
simundump kenz /kinetics/PLA2/PIP2-Ca-PLA2*/kenz 0 0 0 0 0 6e+05 1.5e-05 144 \
  36 0 0 "" red cyan "" -5.972 -7.9794 0
simundump kreac /kinetics/PLA2/DAG-Ca-PLA2-act 0 5e-09 4 "" white darkgreen \
  -10.826 -9.8336 0
simundump kpool /kinetics/PLA2/DAG-Ca-PLA2* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink darkgreen -8.1386 -10.479 0
simundump kenz /kinetics/PLA2/DAG-Ca-PLA2*/kenz 0 0 0 0 0 6e+05 2.5e-05 240 \
  60 0 0 "" red pink "" -5.9511 -10.354 0
simundump kpool /kinetics/PLA2/APC 0 0 30 30 1.8e+07 1.8e+07 0 0 6e+05 5 \
  /kinetics/geometry yellow darkgreen -8.2386 -9.9634 0
simundump kreac /kinetics/PLA2/Degrade-AA 1 0.4 0 "" white darkgreen -6.1808 \
  -5.2875 0
simundump kpool /kinetics/PLA2/PLA2*-Ca 0 0 0 0 0 0 0 0 6e+05 1 \
  /kinetics/geometry orange darkgreen -7.813 -12.687 0
simundump kenz /kinetics/PLA2/PLA2*-Ca/kenz 0 0 0 0 0 6e+05 5e-05 480 120 0 0 \
  "" red orange "" -6.0814 -12.817 0
simundump kpool /kinetics/PLA2/PLA2* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange darkgreen -9.025 -14.851 0
simundump kreac /kinetics/PLA2/PLA2*-Ca-act 1 1e-05 0.1 "" white darkgreen \
  -10.086 -12.752 0
simundump kreac /kinetics/PLA2/dephosphorylate-PLA2* 1 0.17 0 "" white \
  darkgreen -13.693 -11.735 0
simundump kpool /kinetics/MAPK* 0 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  orange yellow 12.492 0.77602 0
simundump kenz /kinetics/MAPK*/MAPK* 0 0 0 0 0 6e+05 6.5e-06 80 20 0 0 "" red \
  orange "" -12.005 -14.94 0
simundump kenz /kinetics/MAPK*/MAPK*-feedback 1 0 0 0 0 6e+05 3.25e-06 40 10 \
  0 0 "" red orange "" 10.387 10.668 0
simundump kpool /kinetics/temp-PIP2 1 0 2.5 2.5 1.5e+06 1.5e+06 0 0 6e+05 6 \
  /kinetics/geometry green black -15.796 -7.0473 0
simundump kpool /kinetics/IP3 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry pink \
  black -0.77375 -4.6555 0
simundump kpool /kinetics/Glu 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  green black -0.79501 13.884 0
simundump group /kinetics/PLCbeta 1 maroon black x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 8.5846 -17.468 0
simundump kreac /kinetics/PLCbeta/Act-PLC-Ca 1 5e-06 1 "" white maroon 3.0709 \
  -16.978 0
simundump kpool /kinetics/PLCbeta/PLC 1 0 0.8 0.8 4.8e+05 4.8e+05 0 0 6e+05 0 \
  /kinetics/geometry cyan maroon 10.697 -16.957 0
simundump kreac /kinetics/PLCbeta/Degrade-IP3 1 1 0 "" white maroon 2.3125 \
  -7.9705 0
simundump kpool /kinetics/PLCbeta/Inositol 1 0 0 0 0 0 0 0 6e+05 5 \
  /kinetics/geometry green maroon 4.9653 -8.7416 0
simundump kreac /kinetics/PLCbeta/Degrade-DAG 1 0.02 0 "" white maroon \
  -0.95715 -7.261 0
simundump kpool /kinetics/PLCbeta/PC 1 0 0 0 0 0 0 0 1 4 \
  /kinetics/geometry[1] green maroon 4.9036 -7.1376 0
simundump kpool /kinetics/PLCbeta/PLC-Ca 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan maroon 7.0147 -12.797 0
simundump kenz /kinetics/PLCbeta/PLC-Ca/PLC-Ca 1 0 0 0 0 6e+05 4.2e-06 40 10 \
  0 0 "" red cyan "" -2.2511 -11.697 0
simundump kreac /kinetics/PLCbeta/Act-PLC-by-Gq 1 4.2e-05 1 "" white maroon \
  2.6996 -15.163 0
simundump kreac /kinetics/PLCbeta/Inact-PLC-Gq 1 0.0133 0 "" white maroon \
  11.125 -10.314 0
simundump kpool /kinetics/PLCbeta/PLC-Ca-Gq 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan maroon 10.629 -13.411 0
simundump kenz /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq 0 0 0 0 0 6e+05 8e-05 \
  192 48 0 0 "" red cyan "" 2.9471 -11.078 0
simundump kpool /kinetics/PLCbeta/PLC-Gq 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan maroon 15.035 -13.537 0
simundump kreac /kinetics/PLCbeta/PLC-bind-Gq 1 4.2e-06 1 "" white maroon \
  14.746 -16.263 0
simundump kreac /kinetics/PLCbeta/PLC-Gq-bind-Ca 1 5e-05 1 "" white maroon \
  14.004 -11.254 0
simundump kpool /kinetics/PIP2 1 0 2.5 2.5 1.5e+06 1.5e+06 0 0 6e+05 6 \
  /kinetics/geometry green black -0.031142 -11.133 0
simundump kpool /kinetics/BetaGamma 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry yellow black 15.787 -2.6163 0
simundump kpool /kinetics/G*GTP 1 0 0 0 0 0 0 0 6e+05 2 /kinetics/geometry \
  red black 7.3149 -7.0131 0
simundump kpool /kinetics/G*GDP 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  yellow black 13.56 -5.6529 0
simundump group /kinetics/Gq 1 blue black x 0 0 "" defaultfile defaultfile.g \
  0 0 0 12.745 -1.9437 0
simundump kreac /kinetics/Gq/RecLigandBinding 1 2.8e-05 10 "" white blue \
  7.3388 -3.179 0
simundump kpool /kinetics/Gq/G-GDP 1 0 1 1 6e+05 6e+05 0 0 6e+05 0 \
  /kinetics/geometry yellow blue 10.68 -2.5729 0
simundump kreac /kinetics/Gq/Basal-Act-G 1 1e-04 0 "" white blue 9.805 \
  -4.8225 0
simundump kreac /kinetics/Gq/Trimerize-G 1 1e-05 0 "" white blue 12.255 \
  -4.7831 0
simundump kreac /kinetics/Gq/Inact-G 1 0.0133 0 "" white blue 10.218 -7.6095 \
  0
simundump kpool /kinetics/Gq/mGluR 1 0 0.3 0.3 1.8e+05 1.8e+05 0 0 6e+05 0 \
  /kinetics/geometry green blue 6.4638 -1.7623 0
simundump kpool /kinetics/Gq/Rec-Glu 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green blue 5.8108 -3.7217 0
simundump kpool /kinetics/Gq/Rec-Gq 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green blue 4.0767 -0.99942 0
simundump kreac /kinetics/Gq/Rec-Glu-bind-Gq 1 1e-08 1e-04 "" white blue \
  4.7148 -2.4225 0
simundump kreac /kinetics/Gq/Glu-bind-Rec-Gq 1 2.8e-05 0.1 "" white blue \
  2.386 -3.0371 0
simundump kpool /kinetics/Gq/Rec-Glu-Gq 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange blue 4.7416 -5.1166 0
simundump kreac /kinetics/Gq/Activate-Gq 1 0.01 0 "" white blue 7.0172 \
  -4.6572 0
simundump kreac /kinetics/Gq/Rec-bind-Gq 1 1e-06 1 "" white blue 6.743 \
  -0.088999 0
simundump kpool /kinetics/Gq/mGluRAntag 1 0 0 0 0 0 0 0 6e+05 4 \
  /kinetics/geometry seagreen blue 0.60216 -2.3091 0
simundump kreac /kinetics/Gq/Antag-bind-Rec-Gq 1 1e-04 0.01 "" white blue \
  2.1399 -4.2806 0
simundump kpool /kinetics/Gq/Blocked-rec-Gq 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry seagreen blue 2.4602 -5.9815 0
simundump group /kinetics/MAPK 0 brown black x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 14.616 11.191 0
simundump kpool /kinetics/MAPK/craf-1 0 0 0.2 0.2 1.2e+05 1.2e+05 0 0 6e+05 0 \
  /kinetics/geometry pink brown 6.326 8.1168 0
simundump kpool /kinetics/MAPK/craf-1* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink brown 9.2401 7.7115 0
simundump kpool /kinetics/MAPK/MAPKK 0 0 0.18 0.18 1.08e+05 1.08e+05 0 0 \
  6e+05 0 /kinetics/geometry pink brown 6.3315 3.9894 0
simundump kpool /kinetics/MAPK/MAPK 0 0 0.36 0.36 2.16e+05 2.16e+05 0 0 6e+05 \
  0 /kinetics/geometry pink brown 6.0656 1.0863 0
simundump kpool /kinetics/MAPK/craf-1** 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry hotpink brown 12.464 7.9022 0
simundump kpool /kinetics/MAPK/MAPK-tyr 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange brown 8.4147 0.82034 0
simundump kpool /kinetics/MAPK/MAPKK* 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink brown 12.548 4.0256 0
simundump kenz /kinetics/MAPK/MAPKK*/MAPKKtyr 0 0 0 0 0 6e+05 2.7e-05 0.6 \
  0.15 0 0 "" red pink "" 8.8914 3.5531 0
simundump kenz /kinetics/MAPK/MAPKK*/MAPKKthr 1 0 0 0 0 6e+05 2.7e-05 0.6 \
  0.15 0 0 "" red pink "" 12.961 3.0363 0
simundump kpool /kinetics/MAPK/MAPKK-ser 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink brown 9.2652 4.1657 0
simundump kpool /kinetics/MAPK/Raf-GTP-Ras* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry red brown 4.9054 6.7814 0
simundump kenz /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 1 0 0 0 0 1 5.5e-06 \
  0.42 0.105 0 0 "" red red "" 7.6179 6.2189 0
simundump kenz /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 1 0 0 0 0 1 5.5e-06 \
  0.42 0.105 0 0 "" red red "" 10.698 6.0688 0
simundump kpool /kinetics/MKP-1 1 0 0.0032 0.0032 1920 1920 0 0 6e+05 0 \
  /kinetics/geometry hotpink black 5.0816 2.4407 0
simundump kenz /kinetics/MKP-1/MKP1-tyr-deph 1 0 0 0 0 6e+05 0.000125 4 1 0 0 \
  "" red hotpink "" 6.2781 3.0684 0
simundump kenz /kinetics/MKP-1/MKP1-thr-deph 1 0 0 0 0 6e+05 0.000125 4 1 0 0 \
  "" red hotpink "" 10.789 2.9311 0
simundump kreac /kinetics/Ras-act-craf 1 4e-05 0.5 "" white black 3.5614 \
  10.091 0
simundump kpool /kinetics/PPhosphatase2A 1 0 0.224 0.224 1.344e+05 1.344e+05 \
  0 0 6e+05 0 /kinetics/geometry hotpink yellow 9.3898 9.1309 0
simundump kenz /kinetics/PPhosphatase2A/craf-deph 1 0 0 0 0 6e+05 3.3e-06 25 \
  6 0 0 "" red hotpink "" 7.8013 10.215 0
simundump kenz /kinetics/PPhosphatase2A/MAPKK-deph 1 0 0 0 0 6e+05 3.3e-06 25 \
  6 0 0 "" red hotpink "" 13.159 6.0736 0
simundump kenz /kinetics/PPhosphatase2A/MAPKK-deph-ser 1 0 0 0 0 6e+05 \
  3.3e-06 25 6 0 0 "" red hotpink "" 4.8651 5.9208 0
simundump kenz /kinetics/PPhosphatase2A/craf**-deph 1 0 0 0 0 1 3.3e-06 25 6 \
  0 0 "" red hotpink "" 12.446 9.9054 0
simundump group /kinetics/Ras 1 blue black x 0 0 "" defaultfile defaultfile.g \
  0 0 0 14.513 16.351 0
simundump kreac /kinetics/Ras/bg-act-GEF 1 1e-05 1 "" white blue 13.468 \
  14.838 0
simundump kpool /kinetics/Ras/GEF-Gprot-bg 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry hotpink blue 10.373 17.271 0
simundump kenz /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras 1 0 0 0 0 6e+05 \
  3.3e-07 0.08 0.02 0 0 "" red hotpink "" 10.402 16.523 0
simundump kreac /kinetics/Ras/dephosph-GEF 1 1 0 "" white blue 9.0702 17.881 \
  0
simundump kpool /kinetics/Ras/inact-GEF 1 0 0.1 0.1 60000 60000 0 0 6e+05 0 \
  /kinetics/geometry hotpink blue 12.453 18.352 0
simundump kpool /kinetics/Ras/GEF* 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  hotpink blue 6.4483 17.246 0
simundump kenz /kinetics/Ras/GEF*/GEF*-act-ras 1 0 0 0 0 6e+05 3.3e-07 0.08 \
  0.02 0 0 "" red hotpink "" 7.0855 16.086 0
simundump kpool /kinetics/Ras/GTP-Ras 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange blue 12.564 13.084 0
simundump kpool /kinetics/Ras/GDP-Ras 1 0 0.2 0.2 1.2e+05 1.2e+05 0 0 6e+05 0 \
  /kinetics/geometry pink blue 6.1309 14.165 0
simundump kreac /kinetics/Ras/Ras-intrinsic-GTPase 1 1e-04 0 "" white blue \
  9.0979 13.5 0
simundump kreac /kinetics/Ras/dephosph-GAP 1 0.1 0 "" white blue 4.0234 \
  15.524 0
simundump kpool /kinetics/Ras/GAP* 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  red blue 1.3498 14.349 0
simundump kpool /kinetics/Ras/GAP 1 0 0.002 0.002 1200 1200 0 0 6e+05 0 \
  /kinetics/geometry red blue 6.6549 12.338 0
simundump kenz /kinetics/Ras/GAP/GAP-inact-ras 1 0 0 0 0 6e+05 0.001666 1000 \
  10 0 0 "" red red "" 9.0121 12.403 0
simundump kpool /kinetics/Ras/inact-GEF* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry hotpink blue 15.029 19.16 0
simundump kreac /kinetics/Ras/CaM-bind-GEF 1 1e-04 1 "" white blue 2.4861 \
  21.679 0
simundump kpool /kinetics/Ras/CaM-GEF 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink blue 5.3451 19.58 0
simundump kenz /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras 1 0 0 0 0 6e+05 3.3e-07 \
  0.08 0.02 0 0 "" red pink "" 5.0223 18.657 0
simundump kreac /kinetics/Ras/dephosph-inact-GEF* 1 1 0 "" white blue 14.431 \
  21.995 0
simundump kpool /kinetics/PKA-active 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry yellow black -33.585 -12.858 0
simundump kenz /kinetics/PKA-active/PKA-phosph-GEF 1 0 0 0 0 6e+05 1e-05 36 9 \
  0 0 "" red yellow "" 10.464 21.469 0
simundump kenz /kinetics/PKA-active/PKA-phosph-I1 1 0 0 0 0 6e+05 1e-05 36 9 \
  0 0 "" red yellow "" -36.894 -17.114 0
simundump kenz /kinetics/PKA-active/PKA-phosph-GAP 1 0 0 0 0 6e+05 9e-05 108 \
  27 0 0 "" red yellow "" -33.892 -19.747 0
simundump kenz /kinetics/PKA-active/phosph-PDE 1 0 0 0 0 6e+05 1e-05 36 9 0 0 \
  "" red yellow "" -30.934 -13.317 0
simundump kpool /kinetics/CaM-Ca4 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  blue yellow -22.075 -2.8669 0
simundump group /kinetics/CaMKII 1 purple black x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -22.401 3.9743 0
simundump kpool /kinetics/CaMKII/CaMKII 1 0 70 70 4.2e+07 4.2e+07 0 0 6e+05 0 \
  /kinetics/geometry palegreen purple -23.819 3.271 0
simundump kpool /kinetics/CaMKII/CaMKII-CaM 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry palegreen purple -27.443 3.0376 0
simundump kpool /kinetics/CaMKII/CaMKII-thr286*-CaM 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry palegreen purple -27.703 1.6156 0
simundump kpool /kinetics/CaMKII/CaMKII*** 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan purple -27.616 -1.6238 0
simundump kreac /kinetics/CaMKII/CaMKII-bind-CaM 1 8.3333e-05 5 "" white \
  purple -23.298 1.5267 0
simundump kreac /kinetics/CaMKII/CaMK-thr286-bind-CaM 1 0.001667 0.1 "" white \
  purple -23.277 0.92147 0
simundump kpool /kinetics/CaMKII/CaMKII-thr286 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry red purple -27.551 -0.09309 0
simundump kpool /kinetics/CaMKII/CaMK-thr306 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry palegreen purple -27.539 -3.2652 0
simundump kpool /kinetics/CaMKII/total-CaMKII 1 0 70 70 4.2e+07 4.2e+07 0 0 \
  6e+05 4 /kinetics/geometry cyan purple -27.84 4.1393 0
simundump kreac /kinetics/CaMKII/basal-activity 1 0.003 0 "" white purple \
  -25.369 -0.16228 0
simundump kpool /kinetics/CaMKII/tot_CaM_CaMKII 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green purple -31.715 3.2973 0
simundump kenz /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 1 0 0 0 0 6e+05 \
  18.48 24 6 0 0 "" red green "" -29.551 0.6145 0
simundump kenz /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 1 0 0 0 0 6e+05 \
  1.54 2 0.5 0 0 "" red green "" -25.596 2.816 0
simundump kpool /kinetics/CaMKII/tot_autonomous_CaMKII 1 0 0 0 0 0 0 0 6e+05 \
  0 /kinetics/geometry green purple -32.064 2.3272 0
simundump kenz /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 1 0 0 0 0 \
  6e+05 12 24 6 0 0 "" red green "" -29.736 -0.41162 0
simundump kenz /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 1 0 0 0 0 \
  6e+05 1 2 0.5 0 0 "" red green "" -25.473 1.9951 0
simundump kpool /kinetics/PP1-active 1 0 1.8 1.8 1.08e+06 1.08e+06 0 0 6e+05 \
  0 /kinetics/geometry cyan yellow -31.448 0.13975 0
simundump kenz /kinetics/PP1-active/Deph-thr286 1 0 0 0 0 6e+05 5.72e-07 1.4 \
  0.35 0 0 "" red cyan "" -31.097 1.7813 0
simundump kenz /kinetics/PP1-active/Deph-thr305 1 0 0 0 0 6e+05 5.72e-07 1.4 \
  0.35 0 0 "" red cyan "" -30.313 -1.1052 0
simundump kenz /kinetics/PP1-active/Deph-thr306 1 0 0 0 0 6e+05 5.72e-07 1.4 \
  0.35 0 0 "" red cyan "" -25.538 3.7223 0
simundump kenz /kinetics/PP1-active/Deph-thr286c 1 0 0 0 0 6e+05 5.72e-07 1.4 \
  0.35 0 0 "" red cyan "" -30.334 -2.8165 0
simundump kenz /kinetics/PP1-active/Deph_thr286b 1 0 0 0 0 6e+05 5.72e-07 1.4 \
  0.35 0 0 "" red cyan "" -24.758 -1.1185 0
simundump group /kinetics/CaM 1 blue black x 0 0 "" defaultfile defaultfile.g \
  0 0 0 -45.327 -3.6101 0
simundump kpool /kinetics/CaM/CaM 1 0 20 20 1.2e+07 1.2e+07 0 0 6e+05 0 \
  /kinetics/geometry pink blue -45.344 4.1096 0
simundump kreac /kinetics/CaM/CaM-TR2-bind-Ca 1 2e-10 72 "" white blue \
  -43.165 3.4688 0
simundump kreac /kinetics/CaM/CaM-TR2-Ca2-bind-Ca 1 6e-06 10 "" white blue \
  -44.169 1.6152 0
simundump kreac /kinetics/CaM/CaM-Ca3-bind-Ca 1 7.75e-07 10 "" white blue \
  -45.727 -1.3505 0
simundump kpool /kinetics/CaM/neurogranin-CaM 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry red blue -54.938 -4.1384 0
simundump kreac /kinetics/CaM/neurogranin-bind-CaM 1 5e-07 1 "" white blue \
  -50.958 -3.7013 0
simundump kpool /kinetics/CaM/neurogranin* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry red blue -47.87 -6.8058 0
simundump kpool /kinetics/CaM/neurogranin 1 0 10 10 6e+06 6e+06 0 0 6e+05 0 \
  /kinetics/geometry red blue -52.568 -6.8161 0
simundump kreac /kinetics/CaM/dephosph-neurogranin 1 0.005 0 "" white blue \
  -45.755 -5.1411 0
simundump kpool /kinetics/CaM-Ca3 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  hotpink yellow -41.838 -0.21314 0
simundump kpool /kinetics/CaM-TR2-Ca2 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry pink yellow -40.328 2.6476 0
simundump kpool /kinetics/CaM(Ca)n-CaNAB 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry darkblue yellow -30.524 -6.6543 0
simundump kenz /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin 1 0 0 0 0 6e+05 \
  5.56e-07 2.67 0.67 0 0 "" red darkblue "" -51.047 -9.2181 0
simundump kenz /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 1 0 0 0 0 6e+05 \
  5.7e-07 1.36 0.34 0 0 "" red darkblue "" -42.742 -17.357 0
simundump kenz /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* 1 0 0 0 0 6e+05 \
  5.7e-07 1.36 0.34 0 0 "" white darkblue "" -41.24 -6.4435 0
simundump group /kinetics/PP1 1 yellow black x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -46.362 -10.235 0
simundump kpool /kinetics/PP1/I1 1 0 1.8 1.8 1.08e+06 1.08e+06 0 0 6e+05 0 \
  /kinetics/geometry orange yellow -38.013 -14.351 0
simundump kpool /kinetics/PP1/I1* 1 0 0.001 0.001 600 600 0 0 6e+05 0 \
  /kinetics/geometry orange yellow -42.158 -14.319 0
simundump kreac /kinetics/PP1/Inact-PP1 1 0.0008333 0.1 "" white yellow \
  -45.403 -12.417 0
simundump kpool /kinetics/PP1/PP1-I1* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry brown yellow -43.747 -8.9641 0
simundump kpool /kinetics/PP1/PP1-I1 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry brown yellow -36.339 -8.6879 0
simundump kreac /kinetics/PP1/dissoc-PP1-I1 1 1 0 "" white yellow -42.498 \
  -12.141 0
simundump kpool /kinetics/PP2A 1 0 0.12 0.12 72000 72000 0 0 6e+05 0 \
  /kinetics/geometry red black -36.52 -3.6325 0
simundump kenz /kinetics/PP2A/PP2A-dephosph-I1 1 0 0 0 0 6e+05 6.6e-06 25 6 0 \
  0 "" red red "" -38.954 -10.663 0
simundump kenz /kinetics/PP2A/PP2A-dephosph-PP1-I* 1 0 0 0 0 6e+05 6.6e-06 25 \
  6 0 0 "" red red "" -36.521 -4.7733 0
simundump kpool /kinetics/CaNAB-Ca4 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry tan yellow -24.923 -8.5717 0
simundump kenz /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM 1 0 0 0 0 6e+05 \
  5.7e-08 0.136 0.034 0 0 "" red tan "" -35.539 -10.496 0
simundump group /kinetics/PP2B 1 red3 black x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -20.052 -5.8546 0
simundump kpool /kinetics/PP2B/CaNAB 1 0 1 1 6e+05 6e+05 0 0 6e+05 0 \
  /kinetics/geometry tan red3 -18.702 -8.4456 0
simundump kpool /kinetics/PP2B/CaNAB-Ca2 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry tan red3 -21.258 -8.5373 0
simundump kreac /kinetics/PP2B/Ca-bind-CaNAB-Ca2 1 1e-11 1 "" white red3 \
  -22.826 -9.7525 0
simundump kreac /kinetics/PP2B/Ca-bind-CaNAB 1 2.78e-08 1 "" white red3 \
  -20.125 -9.8899 0
simundump kreac /kinetics/PP2B/CaM-Ca2-bind-CaNAB 1 4e-07 1 "" white red3 \
  -26.962 -9.3156 0
simundump kpool /kinetics/PP2B/CaMCa3-CaNAB 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry blue red3 -29.667 -10.754 0
simundump kpool /kinetics/PP2B/CaMCa2-CANAB 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry blue red3 -27.526 -10.689 0
simundump kpool /kinetics/PP2B/CaMCa4-CaNAB 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry blue red3 -30.997 -9.6161 0
simundump kreac /kinetics/PP2B/CaMCa3-bind-CaNAB 1 3.73e-06 1 "" white red3 \
  -27.594 -8.6073 0
simundump kreac /kinetics/PP2B/CaMCa4-bind-CaNAB 1 0.001 1 "" white red3 \
  -27.639 -7.6415 0
simundump group /kinetics/PKA 0 blue blue x 0 0 "" defaultfile defaultfile.g \
  0 0 0 -41.943 -20.667 0
simundump kpool /kinetics/PKA/R2C2 0 0 0.5 0.5 3e+05 3e+05 0 0 6e+05 0 \
  /kinetics/geometry white blue -46.656 -27.74 0
simundump kpool /kinetics/PKA/R2C2-cAMP 0 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -43.694 -27.272 0
simundump kreac /kinetics/PKA/cAMP-bind-site-B1 0 9e-05 33 "" white blue \
  -44.279 -31.015 0
simundump kreac /kinetics/PKA/cAMP-bind-site-B2 1 9e-05 33 "" white blue \
  -41.937 -29.767 0
simundump kreac /kinetics/PKA/cAMP-bind-site-A1 1 0.000125 110 "" white blue \
  -39.251 -30.952 0
simundump kreac /kinetics/PKA/cAMP-bind-site-A2 1 0.000125 32.5 "" white blue \
  -35.964 -29.521 0
simundump kpool /kinetics/PKA/R2C2-cAMP2 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -40.146 -26.43 0
simundump kpool /kinetics/PKA/R2C2-cAMP3 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -37.46 -27.49 0
simundump kpool /kinetics/PKA/R2C2-cAMP4 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -35.074 -25.879 0
simundump kpool /kinetics/PKA/R2C-cAMP4 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -37.357 -24.745 0
simundump kpool /kinetics/PKA/R2-cAMP4 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry white blue -43.694 -25.182 0
simundump kreac /kinetics/PKA/Release-C1 1 60 3e-05 "" white blue -35.361 \
  -22.877 0
simundump kreac /kinetics/PKA/Release-C2 1 60 3e-05 "" white blue -40.232 \
  -24.155 0
simundump kpool /kinetics/PKA/PKA-inhibitor 1 0 0.25 0.25 1.5e+05 1.5e+05 0 0 \
  6e+05 0 /kinetics/geometry cyan blue -44.714 -23.288 0
simundump kreac /kinetics/PKA/inhib-PKA 1 1e-04 1 "" white blue -41.921 \
  -22.664 0
simundump kpool /kinetics/PKA/inhibited-PKA 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry cyan blue -45.341 -21.689 0
simundump kpool /kinetics/cAMP 1 0 0 0 0 0 0 0 6e+05 2 /kinetics/geometry \
  green black -30.156 -32.591 0
simundump group /kinetics/AC 1 blue blue x 0 0 "" defaultfile defaultfile.g 0 \
  0 0 -17.529 -17.47 0
simundump kpool /kinetics/AC/ATP 1 0 5000 5000 3e+09 3e+09 0 0 6e+05 4 \
  /kinetics/geometry red blue -18.042 -18.868 0
simundump kpool /kinetics/AC/AC1-CaM 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange blue -20.483 -17.259 0
simundump kenz /kinetics/AC/AC1-CaM/kenz 1 0 0 0 0 6e+05 7.5e-06 72 18 0 1 "" \
  red orange "" -20.52 -18.394 0
simundump kpool /kinetics/AC/AC1 1 0 0.02 0.02 12000 12000 0 0 6e+05 0 \
  /kinetics/geometry orange blue -24.247 -15.394 0
simundump kreac /kinetics/AC/CaM-bind-AC1 1 8.3333e-05 1 "" white blue \
  -22.762 -15.59 0
simundump kpool /kinetics/AC/AC2* 1 0 0 0 0 0 0 0 6e+05 0 /kinetics/geometry \
  yellow blue -18.647 -22.52 0
simundump kenz /kinetics/AC/AC2*/kenz 1 0 0 0 0 6e+05 2.9e-06 28 7 0 1 "" red \
  yellow "" -18.774 -21.663 0
simundump kpool /kinetics/AC/AC2-Gs 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry yellow blue -21.486 -21.709 0
simundump kenz /kinetics/AC/AC2-Gs/kenz 1 0 0 0 0 6e+05 7.5e-06 72 18 0 1 "" \
  red yellow "" -21.564 -20.701 0
simundump kpool /kinetics/AC/AC2 1 0 0.015 0.015 9000 9000 0 0 6e+05 0 \
  /kinetics/geometry yellow blue -17.606 -24.303 0
simundump kreac /kinetics/AC/dephosph-AC2 1 0.1 0 "" white blue -19.759 \
  -25.108 0
simundump kpool /kinetics/AC/AC1-Gs 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry orange blue -22.92 -16.507 0
simundump kenz /kinetics/AC/AC1-Gs/kenz 1 0 0 0 0 1 7.5e-06 72 18 0 1 "" red \
  orange "" -21.945 -17.655 0
simundump kreac /kinetics/AC/Gs-bind-AC2 1 0.00083333 1 "" white blue -20.17 \
  -27.142 0
simundump kreac /kinetics/AC/Gs-bind-AC1 1 0.00021 1 "" white blue -24.879 \
  -16.883 0
simundump kpool /kinetics/AC/AMP 1 0 3.2549e+05 3.2549e+05 3.2549e+05 \
  3.2549e+05 0 0 1 0 /kinetics/geometry[1] pink blue -23.649 -17.47 0
simundump kpool /kinetics/AC/AC2*-Gs 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green blue -20.142 -22.141 0
simundump kenz /kinetics/AC/AC2*-Gs/kenz 1 0 0 0 0 1 7.5e-06 216 54 0 1 "" \
  red green "" -20.066 -21.087 0
simundump kreac /kinetics/AC/Gs-bind-AC2* 1 0.0013888 1 "" white blue -20.343 \
  -23.991 0
simundump kpool /kinetics/AC/cAMP-PDE 1 0 0.45 0.45 2.7e+05 2.7e+05 0 0 6e+05 \
  0 /kinetics/geometry green blue -26.712 -15.696 0
simundump kenz /kinetics/AC/cAMP-PDE/PDE 1 0 0 0 0 6e+05 4.2e-06 40 10 0 0 "" \
  red green "" -26.821 -23.131 0
simundump kpool /kinetics/AC/cAMP-PDE* 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green blue -26.685 -17.78 0
simundump kenz /kinetics/AC/cAMP-PDE*/PDE* 1 0 0 0 0 6e+05 8.4e-06 80 20 0 0 \
  "" red green "" -25.438 -22.305 0
simundump kreac /kinetics/AC/dephosph-PDE 1 0.1 0 "" white blue -28.587 \
  -18.842 0
simundump kpool /kinetics/AC/PDE1 1 0 2 2 1.2e+06 1.2e+06 0 0 6e+05 0 \
  /kinetics/geometry green blue -30.493 -12.115 0
simundump kenz /kinetics/AC/PDE1/PDE1 1 0 0 0 0 6e+05 3.5e-07 6.67 1.667 0 0 \
  "" red green "" -27.426 -22.069 0
simundump kpool /kinetics/AC/CaM.PDE1 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry green blue -30.493 -14.85 0
simundump kenz /kinetics/AC/CaM.PDE1/CaM.PDE1 1 0 0 0 0 6e+05 2.1e-06 40 10 0 \
  0 "" red green "" -28.333 -21.282 0
simundump kreac /kinetics/AC/CaM_bind_PDE1 1 0.0012 5 "" white blue -27.28 \
  -13.293 0
simundump kpool /kinetics/Gs-alpha 1 0 0 0 0 0 0 0 6e+05 2 /kinetics/geometry \
  red black -23.677 -28.03 0
simundump xtab /kinetics/Ca_tab 1 0 0 1 2 0 "" edit_xtab white red 0 0 0 3 \
  -22.628 15.274 0
loadtab /kinetics/Ca_tab table 1 100 0 100 \
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
simundump kreac /kinetics/remove_glu 1 500 1000 "" white black 0.90738 16.118 \
  0
simundump stim /kinetics/stim 1 100 0.002 0.1 0 0 0 0 -1 0 "" white red 3 \
  -3.3486 17.057 0
simundump kpool /kinetics/synapse 1 0 0 0 0 0 0 0 6e+05 2 /kinetics/geometry \
  green black -1.1355 18.481 0
simundump kpool /kinetics/CaMKII-act 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry blue black -36.512 3.6708 0
simundump kpool /kinetics/CaN-active 1 0 0 0 0 0 0 0 6e+05 0 \
  /kinetics/geometry blue black -26.946 -4.8908 0
simundump kpool /kinetics/tot_PP1-act 1 0 0 1.8 1.08e+06 0 0 0 6e+05 0 \
  /kinetics/geometry red black -36.715 0.73835 0
simundump doqcsinfo /kinetics/doqcsinfo 0 db3.g New_pathway \
  network "Upinder S. Bhalla, NCBS" "Upinder S. Bhalla, NCBS" "citation here" \
  "General Mammalian" Neuronal Synapse \
  "Quantitative match to experiments, Qualitative, Hypothetical" \
  "<a href=http://www.ncbi.nlm.nih.gov:80/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9888852&dopt=Abstract>Bhalla US and Iyengar R. Science (1999) 283(5400):381-7</a>( Peer-reviewed publication)" \
  "Exact GENESIS implementation" \
  "Approximates original data , Quantitatively predicts new data" 35 22 0
simundump xgraph /graphs/conc1 0 0 8000 0 0.4 0
simundump xgraph /graphs/conc2 0 0 8000 0 0.3 0
simundump xplot /graphs/conc1/PKC-active.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xplot /graphs/conc1/MAPK*.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" orange 0 0 1
simundump xplot /graphs/conc2/PKA-active.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" yellow 0 0 1
simundump xgraph /moregraphs/conc3 0 0 8000 0 35 0
simundump xgraph /moregraphs/conc4 0 0 8000 0 1.5 0
simundump xplot /moregraphs/conc3/CaMKII-act.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" blue 0 0 1
simundump xplot /moregraphs/conc3/Ca.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xplot /moregraphs/conc4/CaN-active.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" blue 0 0 1
simundump xplot /moregraphs/conc4/tot_PP1-act.Co 3 524288 \
  "delete_plot.w <s> <d>; edit_plot.D <w>" red 0 0 1
simundump xcoredraw /edit/draw 0 -40.243 -15.264 -13.085 2.4942
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] \
  "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
xtextload /file/notes \
"all125 plus plots plus stims." \
"Eliminated notes for portability."
addmsg /kinetics/PKC/PKC-act-by-Ca /kinetics/PKC/PKC-Ca REAC B A 
addmsg /kinetics/PKC/PKC-act-by-DAG /kinetics/PKC/PKC-Ca REAC A B 
addmsg /kinetics/PKC/PKC-Ca-to-memb /kinetics/PKC/PKC-Ca REAC A B 
addmsg /kinetics/PKC/PKC-act-by-Ca-AA /kinetics/PKC/PKC-Ca REAC A B 
addmsg /kinetics/PKC/PKC-cytosolic /kinetics/PKC/PKC-act-by-Ca SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/PKC/PKC-act-by-Ca SUBSTRATE n 
addmsg /kinetics/PKC/PKC-Ca /kinetics/PKC/PKC-act-by-Ca PRODUCT n 
addmsg /kinetics/DAG /kinetics/PKC/PKC-act-by-DAG SUBSTRATE n 
addmsg /kinetics/PKC/PKC-Ca /kinetics/PKC/PKC-act-by-DAG SUBSTRATE n 
addmsg /kinetics/PKC/PKC-Ca-DAG /kinetics/PKC/PKC-act-by-DAG PRODUCT n 
addmsg /kinetics/PKC/PKC-Ca /kinetics/PKC/PKC-Ca-to-memb SUBSTRATE n 
addmsg /kinetics/PKC/PKC-Ca-memb* /kinetics/PKC/PKC-Ca-to-memb PRODUCT n 
addmsg /kinetics/PKC/PKC-Ca-DAG /kinetics/PKC/PKC-DAG-to-memb SUBSTRATE n 
addmsg /kinetics/PKC/PKC-DAG-memb* /kinetics/PKC/PKC-DAG-to-memb PRODUCT n 
addmsg /kinetics/PKC/PKC-Ca /kinetics/PKC/PKC-act-by-Ca-AA SUBSTRATE n 
addmsg /kinetics/AA /kinetics/PKC/PKC-act-by-Ca-AA SUBSTRATE n 
addmsg /kinetics/PKC/PKC-Ca-AA* /kinetics/PKC/PKC-act-by-Ca-AA PRODUCT n 
addmsg /kinetics/PKC/PKC-DAG-AA* /kinetics/PKC/PKC-act-by-DAG-AA PRODUCT n 
addmsg /kinetics/PKC/PKC-DAG-AA /kinetics/PKC/PKC-act-by-DAG-AA SUBSTRATE n 
addmsg /kinetics/PKC/PKC-act-by-DAG-AA /kinetics/PKC/PKC-DAG-AA* REAC B A 
addmsg /kinetics/PKC/PKC-act-by-Ca-AA /kinetics/PKC/PKC-Ca-AA* REAC B A 
addmsg /kinetics/PKC/PKC-Ca-to-memb /kinetics/PKC/PKC-Ca-memb* REAC B A 
addmsg /kinetics/PKC/PKC-DAG-to-memb /kinetics/PKC/PKC-DAG-memb* REAC B A 
addmsg /kinetics/PKC/PKC-basal-act /kinetics/PKC/PKC-basal* REAC B A 
addmsg /kinetics/PKC/PKC-cytosolic /kinetics/PKC/PKC-basal-act SUBSTRATE n 
addmsg /kinetics/PKC/PKC-basal* /kinetics/PKC/PKC-basal-act PRODUCT n 
addmsg /kinetics/PKC/PKC-act-by-AA /kinetics/PKC/PKC-AA* REAC B A 
addmsg /kinetics/AA /kinetics/PKC/PKC-act-by-AA SUBSTRATE n 
addmsg /kinetics/PKC/PKC-AA* /kinetics/PKC/PKC-act-by-AA PRODUCT n 
addmsg /kinetics/PKC/PKC-cytosolic /kinetics/PKC/PKC-act-by-AA SUBSTRATE n 
addmsg /kinetics/PKC/PKC-act-by-DAG /kinetics/PKC/PKC-Ca-DAG REAC B A 
addmsg /kinetics/PKC/PKC-DAG-to-memb /kinetics/PKC/PKC-Ca-DAG REAC A B 
addmsg /kinetics/PKC/PKC-cytosolic /kinetics/PKC/PKC-n-DAG SUBSTRATE n 
addmsg /kinetics/DAG /kinetics/PKC/PKC-n-DAG SUBSTRATE n 
addmsg /kinetics/PKC/PKC-DAG /kinetics/PKC/PKC-n-DAG PRODUCT n 
addmsg /kinetics/PKC/PKC-n-DAG /kinetics/PKC/PKC-DAG REAC B A 
addmsg /kinetics/PKC/PKC-n-DAG-AA /kinetics/PKC/PKC-DAG REAC A B 
addmsg /kinetics/PKC/PKC-DAG /kinetics/PKC/PKC-n-DAG-AA SUBSTRATE n 
addmsg /kinetics/AA /kinetics/PKC/PKC-n-DAG-AA SUBSTRATE n 
addmsg /kinetics/PKC/PKC-DAG-AA /kinetics/PKC/PKC-n-DAG-AA PRODUCT n 
addmsg /kinetics/PKC/PKC-n-DAG-AA /kinetics/PKC/PKC-DAG-AA REAC B A 
addmsg /kinetics/PKC/PKC-act-by-DAG-AA /kinetics/PKC/PKC-DAG-AA REAC A B 
addmsg /kinetics/PKC/PKC-act-by-Ca /kinetics/PKC/PKC-cytosolic REAC A B 
addmsg /kinetics/PKC/PKC-basal-act /kinetics/PKC/PKC-cytosolic REAC A B 
addmsg /kinetics/PKC/PKC-act-by-AA /kinetics/PKC/PKC-cytosolic REAC A B 
addmsg /kinetics/PKC/PKC-n-DAG /kinetics/PKC/PKC-cytosolic REAC A B 
addmsg /kinetics/PKC/PKC-act-by-DAG /kinetics/DAG REAC A B 
addmsg /kinetics/PKC/PKC-n-DAG /kinetics/DAG REAC A B 
addmsg /kinetics/PLA2/DAG-Ca-PLA2-act /kinetics/DAG REAC A B 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq /kinetics/DAG MM_PRD pA 
addmsg /kinetics/PLCbeta/Degrade-DAG /kinetics/DAG REAC A B 
addmsg /kinetics/PLCbeta/PLC-Ca/PLC-Ca /kinetics/DAG MM_PRD pA 
addmsg /kinetics/PKC/PKC-act-by-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/PLA2/PLA2-Ca-act /kinetics/Ca REAC A B 
addmsg /kinetics/PLA2/PLA2*-Ca-act /kinetics/Ca REAC A B 
addmsg /kinetics/PLCbeta/Act-PLC-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/PLCbeta/PLC-Gq-bind-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM/CaM-TR2-bind-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM/CaM-TR2-bind-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM/CaM-TR2-Ca2-bind-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM/CaM-Ca3-bind-Ca /kinetics/Ca REAC A B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB-Ca2 /kinetics/Ca REAC A B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB-Ca2 /kinetics/Ca REAC A B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB /kinetics/Ca REAC A B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB /kinetics/Ca REAC A B 
addmsg /kinetics/Ca_tab /kinetics/Ca SLAVE output 
addmsg /kinetics/PKC/PKC-act-by-Ca-AA /kinetics/AA REAC A B 
addmsg /kinetics/PKC/PKC-act-by-AA /kinetics/AA REAC A B 
addmsg /kinetics/PKC/PKC-n-DAG-AA /kinetics/AA REAC A B 
addmsg /kinetics/PLA2/PLA2-Ca*/kenz /kinetics/AA MM_PRD pA 
addmsg /kinetics/PLA2/PIP2-PLA2*/kenz /kinetics/AA MM_PRD pA 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2*/kenz /kinetics/AA MM_PRD pA 
addmsg /kinetics/PLA2/DAG-Ca-PLA2*/kenz /kinetics/AA MM_PRD pA 
addmsg /kinetics/PLA2/PLA2*-Ca/kenz /kinetics/AA MM_PRD pA 
addmsg /kinetics/PLA2/Degrade-AA /kinetics/AA REAC A B 
addmsg /kinetics/PKC/PKC-DAG-AA* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC/PKC-Ca-memb* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC/PKC-Ca-AA* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC/PKC-DAG-memb* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC/PKC-basal* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC/PKC-AA* /kinetics/PKC-active SUMTOTAL n nInit 
addmsg /kinetics/PKC-active/PKC-act-raf /kinetics/PKC-active REAC sA B 
addmsg /kinetics/PKC-active/PKC-act-raf /kinetics/PKC-active CONSERVE nComplex nComplexInit 
addmsg /kinetics/PKC-active/PKC-inact-GAP /kinetics/PKC-active REAC eA B 
addmsg /kinetics/PKC-active/PKC-inact-GAP /kinetics/PKC-active CONSERVE nComplex nComplexInit 
addmsg /kinetics/PKC-active/PKC-act-GEF /kinetics/PKC-active REAC eA B 
addmsg /kinetics/PKC-active/PKC-act-GEF /kinetics/PKC-active CONSERVE nComplex nComplexInit 
addmsg /kinetics/PKC-active/PKC-phosph-neurogranin /kinetics/PKC-active REAC eA B 
addmsg /kinetics/PKC-active/PKC-phosph-ng-CaM /kinetics/PKC-active REAC eA B 
addmsg /kinetics/PKC-active/phosph-AC2 /kinetics/PKC-active REAC eA B 
addmsg /kinetics/PKC-active /kinetics/PKC-active/PKC-act-raf ENZYME n 
addmsg /kinetics/MAPK/craf-1 /kinetics/PKC-active/PKC-act-raf SUBSTRATE n 
addmsg /kinetics/PKC-active /kinetics/PKC-active/PKC-inact-GAP ENZYME n 
addmsg /kinetics/Ras/GAP /kinetics/PKC-active/PKC-inact-GAP SUBSTRATE n 
addmsg /kinetics/PKC-active /kinetics/PKC-active/PKC-act-GEF ENZYME n 
addmsg /kinetics/Ras/inact-GEF /kinetics/PKC-active/PKC-act-GEF SUBSTRATE n 
addmsg /kinetics/PKC-active /kinetics/PKC-active/PKC-phosph-neurogranin ENZYME n 
addmsg /kinetics/CaM/neurogranin /kinetics/PKC-active/PKC-phosph-neurogranin SUBSTRATE n 
addmsg /kinetics/PKC-active /kinetics/PKC-active/PKC-phosph-ng-CaM ENZYME n 
addmsg /kinetics/CaM/neurogranin-CaM /kinetics/PKC-active/PKC-phosph-ng-CaM SUBSTRATE n 
addmsg /kinetics/PKC-active /kinetics/PKC-active/phosph-AC2 ENZYME n 
addmsg /kinetics/AC/AC2 /kinetics/PKC-active/phosph-AC2 SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-Ca-act /kinetics/PLA2/PLA2-cytosolic REAC A B 
addmsg /kinetics/PLA2/PIP2-PLA2-act /kinetics/PLA2/PLA2-cytosolic REAC A B 
addmsg /kinetics/PLA2/PIP2-PLA2* /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2* /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/PLA2/DAG-Ca-PLA2* /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/PLA2/PLA2-Ca* /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/PLA2/PLA2*-Ca /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/MAPK*/MAPK* /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLA2/PLA2*-Ca/kenz /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLA2/PLA2-Ca*/kenz /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLA2/DAG-Ca-PLA2*/kenz /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2*/kenz /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLA2/PIP2-PLA2*/kenz /kinetics/PLA2/PLA2-cytosolic CONSERVE nComplex nComplexInit 
addmsg /kinetics/MAPK*/MAPK* /kinetics/PLA2/PLA2-cytosolic REAC sA B 
addmsg /kinetics/PLA2/PLA2* /kinetics/PLA2/PLA2-cytosolic CONSERVE n nInit 
addmsg /kinetics/PLA2/dephosphorylate-PLA2* /kinetics/PLA2/PLA2-cytosolic REAC B A 
addmsg /kinetics/PLA2/PLA2-cytosolic /kinetics/PLA2/PLA2-Ca-act SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/PLA2/PLA2-Ca-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-Ca* /kinetics/PLA2/PLA2-Ca-act PRODUCT n 
addmsg /kinetics/PLA2/PLA2-Ca-act /kinetics/PLA2/PLA2-Ca* REAC B A 
addmsg /kinetics/PLA2/PLA2-Ca*/kenz /kinetics/PLA2/PLA2-Ca* REAC eA B 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2-act /kinetics/PLA2/PLA2-Ca* REAC A B 
addmsg /kinetics/PLA2/DAG-Ca-PLA2-act /kinetics/PLA2/PLA2-Ca* REAC A B 
addmsg /kinetics/PLA2/PLA2-Ca* /kinetics/PLA2/PLA2-Ca*/kenz ENZYME n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/PLA2-Ca*/kenz SUBSTRATE n 
addmsg /kinetics/temp-PIP2 /kinetics/PLA2/PIP2-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-cytosolic /kinetics/PLA2/PIP2-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/PIP2-PLA2* /kinetics/PLA2/PIP2-PLA2-act PRODUCT n 
addmsg /kinetics/PLA2/PIP2-PLA2-act /kinetics/PLA2/PIP2-PLA2* REAC B A 
addmsg /kinetics/PLA2/PIP2-PLA2*/kenz /kinetics/PLA2/PIP2-PLA2* REAC eA B 
addmsg /kinetics/PLA2/PIP2-PLA2* /kinetics/PLA2/PIP2-PLA2*/kenz ENZYME n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/PIP2-PLA2*/kenz SUBSTRATE n 
addmsg /kinetics/temp-PIP2 /kinetics/PLA2/PIP2-Ca-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-Ca* /kinetics/PLA2/PIP2-Ca-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2* /kinetics/PLA2/PIP2-Ca-PLA2-act PRODUCT n 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2-act /kinetics/PLA2/PIP2-Ca-PLA2* REAC B A 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2*/kenz /kinetics/PLA2/PIP2-Ca-PLA2* REAC eA B 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2* /kinetics/PLA2/PIP2-Ca-PLA2*/kenz ENZYME n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/PIP2-Ca-PLA2*/kenz SUBSTRATE n 
addmsg /kinetics/DAG /kinetics/PLA2/DAG-Ca-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-Ca* /kinetics/PLA2/DAG-Ca-PLA2-act SUBSTRATE n 
addmsg /kinetics/PLA2/DAG-Ca-PLA2* /kinetics/PLA2/DAG-Ca-PLA2-act PRODUCT n 
addmsg /kinetics/PLA2/DAG-Ca-PLA2-act /kinetics/PLA2/DAG-Ca-PLA2* REAC B A 
addmsg /kinetics/PLA2/DAG-Ca-PLA2*/kenz /kinetics/PLA2/DAG-Ca-PLA2* REAC eA B 
addmsg /kinetics/PLA2/DAG-Ca-PLA2* /kinetics/PLA2/DAG-Ca-PLA2*/kenz ENZYME n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/DAG-Ca-PLA2*/kenz SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-Ca*/kenz /kinetics/PLA2/APC REAC sA B 
addmsg /kinetics/PLA2/PIP2-PLA2*/kenz /kinetics/PLA2/APC REAC sA B 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2*/kenz /kinetics/PLA2/APC REAC sA B 
addmsg /kinetics/PLA2/DAG-Ca-PLA2*/kenz /kinetics/PLA2/APC REAC sA B 
addmsg /kinetics/PLA2/PLA2*-Ca/kenz /kinetics/PLA2/APC REAC sA B 
addmsg /kinetics/PLA2/Degrade-AA /kinetics/PLA2/APC REAC B A 
addmsg /kinetics/AA /kinetics/PLA2/Degrade-AA SUBSTRATE n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/Degrade-AA PRODUCT n 
addmsg /kinetics/PLA2/PLA2*-Ca/kenz /kinetics/PLA2/PLA2*-Ca REAC eA B 
addmsg /kinetics/PLA2/PLA2*-Ca-act /kinetics/PLA2/PLA2*-Ca REAC B A 
addmsg /kinetics/PLA2/PLA2*-Ca /kinetics/PLA2/PLA2*-Ca/kenz ENZYME n 
addmsg /kinetics/PLA2/APC /kinetics/PLA2/PLA2*-Ca/kenz SUBSTRATE n 
addmsg /kinetics/MAPK*/MAPK* /kinetics/PLA2/PLA2* MM_PRD pA 
addmsg /kinetics/PLA2/PLA2*-Ca-act /kinetics/PLA2/PLA2* REAC A B 
addmsg /kinetics/PLA2/dephosphorylate-PLA2* /kinetics/PLA2/PLA2* REAC A B 
addmsg /kinetics/PLA2/PLA2* /kinetics/PLA2/PLA2*-Ca-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2*-Ca /kinetics/PLA2/PLA2*-Ca-act PRODUCT n 
addmsg /kinetics/Ca /kinetics/PLA2/PLA2*-Ca-act SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2* /kinetics/PLA2/dephosphorylate-PLA2* SUBSTRATE n 
addmsg /kinetics/PLA2/PLA2-cytosolic /kinetics/PLA2/dephosphorylate-PLA2* PRODUCT n 
addmsg /kinetics/MAPK*/MAPK* /kinetics/MAPK* REAC eA B 
addmsg /kinetics/MAPK*/MAPK*-feedback /kinetics/MAPK* REAC eA B 
addmsg /kinetics/MAPK/MAPKK*/MAPKKthr /kinetics/MAPK* MM_PRD pA 
addmsg /kinetics/MKP-1/MKP1-thr-deph /kinetics/MAPK* REAC sA B 
addmsg /kinetics/MAPK* /kinetics/MAPK*/MAPK* ENZYME n 
addmsg /kinetics/PLA2/PLA2-cytosolic /kinetics/MAPK*/MAPK* SUBSTRATE n 
addmsg /kinetics/MAPK* /kinetics/MAPK*/MAPK*-feedback ENZYME n 
addmsg /kinetics/MAPK/craf-1* /kinetics/MAPK*/MAPK*-feedback SUBSTRATE n 
addmsg /kinetics/PLA2/PIP2-PLA2-act /kinetics/temp-PIP2 REAC A B 
addmsg /kinetics/PLA2/PIP2-Ca-PLA2-act /kinetics/temp-PIP2 REAC A B 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq /kinetics/IP3 MM_PRD pA 
addmsg /kinetics/PLCbeta/Degrade-IP3 /kinetics/IP3 REAC A B 
addmsg /kinetics/PLCbeta/PLC-Ca/PLC-Ca /kinetics/IP3 MM_PRD pA 
addmsg /kinetics/Gq/RecLigandBinding /kinetics/Glu REAC A B 
addmsg /kinetics/Gq/Glu-bind-Rec-Gq /kinetics/Glu REAC A B 
addmsg /kinetics/remove_glu /kinetics/Glu REAC A B 
addmsg /kinetics/Ca /kinetics/PLCbeta/Act-PLC-Ca SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC /kinetics/PLCbeta/Act-PLC-Ca SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Ca /kinetics/PLCbeta/Act-PLC-Ca PRODUCT n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq /kinetics/PLCbeta/PLC CONSERVE n nInit 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq /kinetics/PLCbeta/PLC CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLCbeta/Act-PLC-Ca /kinetics/PLCbeta/PLC REAC A B 
addmsg /kinetics/PLCbeta/PLC-Ca /kinetics/PLCbeta/PLC CONSERVE n nInit 
addmsg /kinetics/PLCbeta/PLC-Ca/PLC-Ca /kinetics/PLCbeta/PLC CONSERVE nComplex nComplexInit 
addmsg /kinetics/PLCbeta/PLC-bind-Gq /kinetics/PLCbeta/PLC REAC A B 
addmsg /kinetics/PLCbeta/PLC-Gq /kinetics/PLCbeta/PLC CONSERVE n nInit 
addmsg /kinetics/IP3 /kinetics/PLCbeta/Degrade-IP3 SUBSTRATE n 
addmsg /kinetics/PLCbeta/Inositol /kinetics/PLCbeta/Degrade-IP3 PRODUCT n 
addmsg /kinetics/PLCbeta/Degrade-IP3 /kinetics/PLCbeta/Inositol REAC B A 
addmsg /kinetics/PLCbeta/PC /kinetics/PLCbeta/Degrade-DAG PRODUCT n 
addmsg /kinetics/DAG /kinetics/PLCbeta/Degrade-DAG SUBSTRATE n 
addmsg /kinetics/PLCbeta/Degrade-DAG /kinetics/PLCbeta/PC REAC B A 
addmsg /kinetics/PLCbeta/Act-PLC-Ca /kinetics/PLCbeta/PLC-Ca REAC B A 
addmsg /kinetics/PLCbeta/Act-PLC-by-Gq /kinetics/PLCbeta/PLC-Ca REAC A B 
addmsg /kinetics/PLCbeta/Inact-PLC-Gq /kinetics/PLCbeta/PLC-Ca REAC B A 
addmsg /kinetics/PLCbeta/PLC-Ca/PLC-Ca /kinetics/PLCbeta/PLC-Ca REAC eA B 
addmsg /kinetics/PLCbeta/PLC-Ca /kinetics/PLCbeta/PLC-Ca/PLC-Ca ENZYME n 
addmsg /kinetics/PIP2 /kinetics/PLCbeta/PLC-Ca/PLC-Ca SUBSTRATE n 
addmsg /kinetics/G*GTP /kinetics/PLCbeta/Act-PLC-by-Gq SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Ca /kinetics/PLCbeta/Act-PLC-by-Gq SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq /kinetics/PLCbeta/Act-PLC-by-Gq PRODUCT n 
addmsg /kinetics/G*GDP /kinetics/PLCbeta/Inact-PLC-Gq PRODUCT n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq /kinetics/PLCbeta/Inact-PLC-Gq SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Ca /kinetics/PLCbeta/Inact-PLC-Gq PRODUCT n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq /kinetics/PLCbeta/PLC-Ca-Gq REAC eA B 
addmsg /kinetics/PLCbeta/Act-PLC-by-Gq /kinetics/PLCbeta/PLC-Ca-Gq REAC B A 
addmsg /kinetics/PLCbeta/Inact-PLC-Gq /kinetics/PLCbeta/PLC-Ca-Gq REAC A B 
addmsg /kinetics/PLCbeta/PLC-Gq-bind-Ca /kinetics/PLCbeta/PLC-Ca-Gq REAC B A 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq ENZYME n 
addmsg /kinetics/PIP2 /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-bind-Gq /kinetics/PLCbeta/PLC-Gq REAC B A 
addmsg /kinetics/PLCbeta/PLC-Gq-bind-Ca /kinetics/PLCbeta/PLC-Gq REAC A B 
addmsg /kinetics/PLCbeta/PLC /kinetics/PLCbeta/PLC-bind-Gq SUBSTRATE n 
addmsg /kinetics/G*GTP /kinetics/PLCbeta/PLC-bind-Gq SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Gq /kinetics/PLCbeta/PLC-bind-Gq PRODUCT n 
addmsg /kinetics/Ca /kinetics/PLCbeta/PLC-Gq-bind-Ca SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Gq /kinetics/PLCbeta/PLC-Gq-bind-Ca SUBSTRATE n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq /kinetics/PLCbeta/PLC-Gq-bind-Ca PRODUCT n 
addmsg /kinetics/PLCbeta/PLC-Ca-Gq/PLCb-Ca-Gq /kinetics/PIP2 REAC sA B 
addmsg /kinetics/PLCbeta/PLC-Ca/PLC-Ca /kinetics/PIP2 REAC sA B 
addmsg /kinetics/Gq/Trimerize-G /kinetics/BetaGamma REAC A B 
addmsg /kinetics/Gq/Basal-Act-G /kinetics/BetaGamma REAC B A 
addmsg /kinetics/Gq/Activate-Gq /kinetics/BetaGamma REAC B A 
addmsg /kinetics/Ras/bg-act-GEF /kinetics/BetaGamma REAC A B 
addmsg /kinetics/PLCbeta/Act-PLC-by-Gq /kinetics/G*GTP REAC A B 
addmsg /kinetics/PLCbeta/PLC-bind-Gq /kinetics/G*GTP REAC A B 
addmsg /kinetics/Gq/Inact-G /kinetics/G*GTP REAC A B 
addmsg /kinetics/Gq/Basal-Act-G /kinetics/G*GTP REAC B A 
addmsg /kinetics/Gq/Activate-Gq /kinetics/G*GTP REAC B A 
addmsg /kinetics/PLCbeta/Inact-PLC-Gq /kinetics/G*GDP REAC B A 
addmsg /kinetics/Gq/Inact-G /kinetics/G*GDP REAC B A 
addmsg /kinetics/Gq/Trimerize-G /kinetics/G*GDP REAC A B 
addmsg /kinetics/Gq/mGluR /kinetics/Gq/RecLigandBinding SUBSTRATE n 
addmsg /kinetics/Glu /kinetics/Gq/RecLigandBinding SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Glu /kinetics/Gq/RecLigandBinding PRODUCT n 
addmsg /kinetics/Gq/Trimerize-G /kinetics/Gq/G-GDP REAC B A 
addmsg /kinetics/Gq/Basal-Act-G /kinetics/Gq/G-GDP REAC A B 
addmsg /kinetics/Gq/Rec-Glu-bind-Gq /kinetics/Gq/G-GDP REAC A B 
addmsg /kinetics/Gq/Rec-bind-Gq /kinetics/Gq/G-GDP REAC A B 
addmsg /kinetics/Gq/G-GDP /kinetics/Gq/Basal-Act-G SUBSTRATE n 
addmsg /kinetics/G*GTP /kinetics/Gq/Basal-Act-G PRODUCT n 
addmsg /kinetics/BetaGamma /kinetics/Gq/Basal-Act-G PRODUCT n 
addmsg /kinetics/G*GDP /kinetics/Gq/Trimerize-G SUBSTRATE n 
addmsg /kinetics/BetaGamma /kinetics/Gq/Trimerize-G SUBSTRATE n 
addmsg /kinetics/Gq/G-GDP /kinetics/Gq/Trimerize-G PRODUCT n 
addmsg /kinetics/G*GTP /kinetics/Gq/Inact-G SUBSTRATE n 
addmsg /kinetics/G*GDP /kinetics/Gq/Inact-G PRODUCT n 
addmsg /kinetics/Gq/RecLigandBinding /kinetics/Gq/mGluR REAC A B 
addmsg /kinetics/Gq/Rec-Glu /kinetics/Gq/mGluR CONSERVE n nInit 
addmsg /kinetics/Gq/Rec-Glu-Gq /kinetics/Gq/mGluR CONSERVE n nInit 
addmsg /kinetics/Gq/Rec-Gq /kinetics/Gq/mGluR CONSERVE n nInit 
addmsg /kinetics/Gq/Rec-bind-Gq /kinetics/Gq/mGluR REAC A B 
addmsg /kinetics/Gq/Blocked-rec-Gq /kinetics/Gq/mGluR CONSERVE n nInit 
addmsg /kinetics/Gq/RecLigandBinding /kinetics/Gq/Rec-Glu REAC B A 
addmsg /kinetics/Gq/Rec-Glu-bind-Gq /kinetics/Gq/Rec-Glu REAC A B 
addmsg /kinetics/Gq/Activate-Gq /kinetics/Gq/Rec-Glu REAC B A 
addmsg /kinetics/Gq/Glu-bind-Rec-Gq /kinetics/Gq/Rec-Gq REAC A B 
addmsg /kinetics/Gq/Rec-bind-Gq /kinetics/Gq/Rec-Gq REAC B A 
addmsg /kinetics/Gq/Antag-bind-Rec-Gq /kinetics/Gq/Rec-Gq REAC A B 
addmsg /kinetics/Gq/G-GDP /kinetics/Gq/Rec-Glu-bind-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Glu /kinetics/Gq/Rec-Glu-bind-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Glu-Gq /kinetics/Gq/Rec-Glu-bind-Gq PRODUCT n 
addmsg /kinetics/Glu /kinetics/Gq/Glu-bind-Rec-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Glu-Gq /kinetics/Gq/Glu-bind-Rec-Gq PRODUCT n 
addmsg /kinetics/Gq/Rec-Gq /kinetics/Gq/Glu-bind-Rec-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Glu-bind-Gq /kinetics/Gq/Rec-Glu-Gq REAC B A 
addmsg /kinetics/Gq/Glu-bind-Rec-Gq /kinetics/Gq/Rec-Glu-Gq REAC B A 
addmsg /kinetics/Gq/Activate-Gq /kinetics/Gq/Rec-Glu-Gq REAC A B 
addmsg /kinetics/Gq/Rec-Glu-Gq /kinetics/Gq/Activate-Gq SUBSTRATE n 
addmsg /kinetics/G*GTP /kinetics/Gq/Activate-Gq PRODUCT n 
addmsg /kinetics/BetaGamma /kinetics/Gq/Activate-Gq PRODUCT n 
addmsg /kinetics/Gq/Rec-Glu /kinetics/Gq/Activate-Gq PRODUCT n 
addmsg /kinetics/Gq/G-GDP /kinetics/Gq/Rec-bind-Gq SUBSTRATE n 
addmsg /kinetics/Gq/mGluR /kinetics/Gq/Rec-bind-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Rec-Gq /kinetics/Gq/Rec-bind-Gq PRODUCT n 
addmsg /kinetics/Gq/Antag-bind-Rec-Gq /kinetics/Gq/mGluRAntag REAC A B 
addmsg /kinetics/Gq/Rec-Gq /kinetics/Gq/Antag-bind-Rec-Gq SUBSTRATE n 
addmsg /kinetics/Gq/mGluRAntag /kinetics/Gq/Antag-bind-Rec-Gq SUBSTRATE n 
addmsg /kinetics/Gq/Blocked-rec-Gq /kinetics/Gq/Antag-bind-Rec-Gq PRODUCT n 
addmsg /kinetics/Gq/Antag-bind-Rec-Gq /kinetics/Gq/Blocked-rec-Gq REAC B A 
addmsg /kinetics/PKC-active/PKC-act-raf /kinetics/MAPK/craf-1 REAC sA B 
addmsg /kinetics/PPhosphatase2A/craf-deph /kinetics/MAPK/craf-1 MM_PRD pA 
addmsg /kinetics/PKC-active/PKC-act-raf /kinetics/MAPK/craf-1* MM_PRD pA 
addmsg /kinetics/MAPK*/MAPK*-feedback /kinetics/MAPK/craf-1* REAC sA B 
addmsg /kinetics/PPhosphatase2A/craf-deph /kinetics/MAPK/craf-1* REAC sA B 
addmsg /kinetics/PPhosphatase2A/craf**-deph /kinetics/MAPK/craf-1* MM_PRD pA 
addmsg /kinetics/Ras-act-craf /kinetics/MAPK/craf-1* REAC A B 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph-ser /kinetics/MAPK/MAPKK MM_PRD pA 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 /kinetics/MAPK/MAPKK REAC sA B 
addmsg /kinetics/MAPK/MAPKK*/MAPKKtyr /kinetics/MAPK/MAPK REAC sA B 
addmsg /kinetics/MKP-1/MKP1-tyr-deph /kinetics/MAPK/MAPK MM_PRD pA 
addmsg /kinetics/MAPK*/MAPK*-feedback /kinetics/MAPK/craf-1** MM_PRD pA 
addmsg /kinetics/PPhosphatase2A/craf**-deph /kinetics/MAPK/craf-1** REAC sA B 
addmsg /kinetics/MAPK/MAPKK*/MAPKKtyr /kinetics/MAPK/MAPK-tyr MM_PRD pA 
addmsg /kinetics/MAPK/MAPKK*/MAPKKthr /kinetics/MAPK/MAPK-tyr REAC sA B 
addmsg /kinetics/MKP-1/MKP1-tyr-deph /kinetics/MAPK/MAPK-tyr REAC sA B 
addmsg /kinetics/MKP-1/MKP1-thr-deph /kinetics/MAPK/MAPK-tyr MM_PRD pA 
addmsg /kinetics/MAPK/MAPKK*/MAPKKtyr /kinetics/MAPK/MAPKK* REAC eA B 
addmsg /kinetics/MAPK/MAPKK*/MAPKKthr /kinetics/MAPK/MAPKK* REAC eA B 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph /kinetics/MAPK/MAPKK* REAC sA B 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 /kinetics/MAPK/MAPKK* MM_PRD pA 
addmsg /kinetics/MAPK/MAPKK* /kinetics/MAPK/MAPKK*/MAPKKtyr ENZYME n 
addmsg /kinetics/MAPK/MAPK /kinetics/MAPK/MAPKK*/MAPKKtyr SUBSTRATE n 
addmsg /kinetics/MAPK/MAPKK* /kinetics/MAPK/MAPKK*/MAPKKthr ENZYME n 
addmsg /kinetics/MAPK/MAPK-tyr /kinetics/MAPK/MAPKK*/MAPKKthr SUBSTRATE n 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph /kinetics/MAPK/MAPKK-ser MM_PRD pA 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph-ser /kinetics/MAPK/MAPKK-ser REAC sA B 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 /kinetics/MAPK/MAPKK-ser MM_PRD pA 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 /kinetics/MAPK/MAPKK-ser REAC sA B 
addmsg /kinetics/Ras-act-craf /kinetics/MAPK/Raf-GTP-Ras* REAC B A 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 /kinetics/MAPK/Raf-GTP-Ras* REAC eA B 
addmsg /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 /kinetics/MAPK/Raf-GTP-Ras* REAC eA B 
addmsg /kinetics/MAPK/Raf-GTP-Ras* /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 ENZYME n 
addmsg /kinetics/MAPK/MAPKK /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.1 SUBSTRATE n 
addmsg /kinetics/MAPK/Raf-GTP-Ras* /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 ENZYME n 
addmsg /kinetics/MAPK/MAPKK-ser /kinetics/MAPK/Raf-GTP-Ras*/Raf-GTP-Ras*.2 SUBSTRATE n 
addmsg /kinetics/MKP-1/MKP1-tyr-deph /kinetics/MKP-1 REAC eA B 
addmsg /kinetics/MKP-1/MKP1-thr-deph /kinetics/MKP-1 REAC eA B 
addmsg /kinetics/MKP-1 /kinetics/MKP-1/MKP1-tyr-deph ENZYME n 
addmsg /kinetics/MAPK/MAPK-tyr /kinetics/MKP-1/MKP1-tyr-deph SUBSTRATE n 
addmsg /kinetics/MKP-1 /kinetics/MKP-1/MKP1-thr-deph ENZYME n 
addmsg /kinetics/MAPK* /kinetics/MKP-1/MKP1-thr-deph SUBSTRATE n 
addmsg /kinetics/MAPK/Raf-GTP-Ras* /kinetics/Ras-act-craf PRODUCT n 
addmsg /kinetics/MAPK/craf-1* /kinetics/Ras-act-craf SUBSTRATE n 
addmsg /kinetics/Ras/GTP-Ras /kinetics/Ras-act-craf SUBSTRATE n 
addmsg /kinetics/PPhosphatase2A/craf-deph /kinetics/PPhosphatase2A REAC eA B 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph /kinetics/PPhosphatase2A REAC eA B 
addmsg /kinetics/PPhosphatase2A/MAPKK-deph-ser /kinetics/PPhosphatase2A REAC eA B 
addmsg /kinetics/PPhosphatase2A/craf**-deph /kinetics/PPhosphatase2A REAC eA B 
addmsg /kinetics/PPhosphatase2A /kinetics/PPhosphatase2A/craf-deph ENZYME n 
addmsg /kinetics/MAPK/craf-1* /kinetics/PPhosphatase2A/craf-deph SUBSTRATE n 
addmsg /kinetics/PPhosphatase2A /kinetics/PPhosphatase2A/MAPKK-deph ENZYME n 
addmsg /kinetics/MAPK/MAPKK* /kinetics/PPhosphatase2A/MAPKK-deph SUBSTRATE n 
addmsg /kinetics/PPhosphatase2A /kinetics/PPhosphatase2A/MAPKK-deph-ser ENZYME n 
addmsg /kinetics/MAPK/MAPKK-ser /kinetics/PPhosphatase2A/MAPKK-deph-ser SUBSTRATE n 
addmsg /kinetics/PPhosphatase2A /kinetics/PPhosphatase2A/craf**-deph ENZYME n 
addmsg /kinetics/MAPK/craf-1** /kinetics/PPhosphatase2A/craf**-deph SUBSTRATE n 
addmsg /kinetics/BetaGamma /kinetics/Ras/bg-act-GEF SUBSTRATE n 
addmsg /kinetics/Ras/inact-GEF /kinetics/Ras/bg-act-GEF SUBSTRATE n 
addmsg /kinetics/Ras/GEF-Gprot-bg /kinetics/Ras/bg-act-GEF PRODUCT n 
addmsg /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras /kinetics/Ras/GEF-Gprot-bg REAC eA B 
addmsg /kinetics/Ras/bg-act-GEF /kinetics/Ras/GEF-Gprot-bg REAC B A 
addmsg /kinetics/Ras/GEF-Gprot-bg /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras ENZYME n 
addmsg /kinetics/Ras/GDP-Ras /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras SUBSTRATE n 
addmsg /kinetics/Ras/GEF* /kinetics/Ras/dephosph-GEF SUBSTRATE n 
addmsg /kinetics/Ras/inact-GEF /kinetics/Ras/dephosph-GEF PRODUCT n 
addmsg /kinetics/Ras/bg-act-GEF /kinetics/Ras/inact-GEF REAC A B 
addmsg /kinetics/PKC-active/PKC-act-GEF /kinetics/Ras/inact-GEF REAC sA B 
addmsg /kinetics/Ras/dephosph-GEF /kinetics/Ras/inact-GEF REAC B A 
addmsg /kinetics/PKA-active/PKA-phosph-GEF /kinetics/Ras/inact-GEF REAC sA B 
addmsg /kinetics/Ras/CaM-bind-GEF /kinetics/Ras/inact-GEF REAC A B 
addmsg /kinetics/Ras/dephosph-inact-GEF* /kinetics/Ras/inact-GEF REAC B A 
addmsg /kinetics/PKC-active/PKC-act-GEF /kinetics/Ras/GEF* MM_PRD pA 
addmsg /kinetics/Ras/dephosph-GEF /kinetics/Ras/GEF* REAC A B 
addmsg /kinetics/Ras/GEF*/GEF*-act-ras /kinetics/Ras/GEF* REAC eA B 
addmsg /kinetics/Ras/GEF* /kinetics/Ras/GEF*/GEF*-act-ras ENZYME n 
addmsg /kinetics/Ras/GDP-Ras /kinetics/Ras/GEF*/GEF*-act-ras SUBSTRATE n 
addmsg /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras /kinetics/Ras/GTP-Ras MM_PRD pA 
addmsg /kinetics/Ras/GAP/GAP-inact-ras /kinetics/Ras/GTP-Ras REAC sA B 
addmsg /kinetics/Ras/Ras-intrinsic-GTPase /kinetics/Ras/GTP-Ras REAC A B 
addmsg /kinetics/Ras/GEF*/GEF*-act-ras /kinetics/Ras/GTP-Ras MM_PRD pA 
addmsg /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras /kinetics/Ras/GTP-Ras MM_PRD pA 
addmsg /kinetics/Ras-act-craf /kinetics/Ras/GTP-Ras REAC A B 
addmsg /kinetics/Ras/GEF-Gprot-bg/GEF-bg_act-ras /kinetics/Ras/GDP-Ras REAC sA B 
addmsg /kinetics/Ras/GAP/GAP-inact-ras /kinetics/Ras/GDP-Ras MM_PRD pA 
addmsg /kinetics/Ras/Ras-intrinsic-GTPase /kinetics/Ras/GDP-Ras REAC B A 
addmsg /kinetics/Ras/GEF*/GEF*-act-ras /kinetics/Ras/GDP-Ras REAC sA B 
addmsg /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras /kinetics/Ras/GDP-Ras REAC sA B 
addmsg /kinetics/Ras/GTP-Ras /kinetics/Ras/Ras-intrinsic-GTPase SUBSTRATE n 
addmsg /kinetics/Ras/GDP-Ras /kinetics/Ras/Ras-intrinsic-GTPase PRODUCT n 
addmsg /kinetics/Ras/GAP* /kinetics/Ras/dephosph-GAP SUBSTRATE n 
addmsg /kinetics/Ras/GAP /kinetics/Ras/dephosph-GAP PRODUCT n 
addmsg /kinetics/PKC-active/PKC-inact-GAP /kinetics/Ras/GAP* MM_PRD pA 
addmsg /kinetics/Ras/dephosph-GAP /kinetics/Ras/GAP* REAC A B 
addmsg /kinetics/Ras/GAP/GAP-inact-ras /kinetics/Ras/GAP REAC eA B 
addmsg /kinetics/PKC-active/PKC-inact-GAP /kinetics/Ras/GAP REAC sA B 
addmsg /kinetics/Ras/dephosph-GAP /kinetics/Ras/GAP REAC B A 
addmsg /kinetics/Ras/GAP /kinetics/Ras/GAP/GAP-inact-ras ENZYME n 
addmsg /kinetics/Ras/GTP-Ras /kinetics/Ras/GAP/GAP-inact-ras SUBSTRATE n 
addmsg /kinetics/PKA-active/PKA-phosph-GEF /kinetics/Ras/inact-GEF* MM_PRD pA 
addmsg /kinetics/Ras/dephosph-inact-GEF* /kinetics/Ras/inact-GEF* REAC A B 
addmsg /kinetics/Ras/inact-GEF /kinetics/Ras/CaM-bind-GEF SUBSTRATE n 
addmsg /kinetics/Ras/CaM-GEF /kinetics/Ras/CaM-bind-GEF PRODUCT n 
addmsg /kinetics/CaM-Ca4 /kinetics/Ras/CaM-bind-GEF SUBSTRATE n 
addmsg /kinetics/Ras/CaM-bind-GEF /kinetics/Ras/CaM-GEF REAC B A 
addmsg /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras /kinetics/Ras/CaM-GEF REAC eA B 
addmsg /kinetics/Ras/CaM-GEF /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras ENZYME n 
addmsg /kinetics/Ras/GDP-Ras /kinetics/Ras/CaM-GEF/CaM-GEF-act-ras SUBSTRATE n 
addmsg /kinetics/Ras/inact-GEF* /kinetics/Ras/dephosph-inact-GEF* SUBSTRATE n 
addmsg /kinetics/Ras/inact-GEF /kinetics/Ras/dephosph-inact-GEF* PRODUCT n 
addmsg /kinetics/PKA-active/PKA-phosph-GEF /kinetics/PKA-active REAC eA B 
addmsg /kinetics/PKA-active/PKA-phosph-I1 /kinetics/PKA-active REAC eA B 
addmsg /kinetics/PKA/Release-C1 /kinetics/PKA-active REAC B A 
addmsg /kinetics/PKA/Release-C2 /kinetics/PKA-active REAC B A 
addmsg /kinetics/PKA/inhib-PKA /kinetics/PKA-active REAC A B 
addmsg /kinetics/PKA-active/PKA-phosph-GAP /kinetics/PKA-active REAC eA B 
addmsg /kinetics/PKA-active/phosph-PDE /kinetics/PKA-active REAC eA B 
addmsg /kinetics/PKA-active /kinetics/PKA-active/PKA-phosph-GEF ENZYME n 
addmsg /kinetics/Ras/inact-GEF /kinetics/PKA-active/PKA-phosph-GEF SUBSTRATE n 
addmsg /kinetics/PKA-active /kinetics/PKA-active/PKA-phosph-I1 ENZYME n 
addmsg /kinetics/PP1/I1 /kinetics/PKA-active/PKA-phosph-I1 SUBSTRATE n 
addmsg /kinetics/PKA-active /kinetics/PKA-active/PKA-phosph-GAP ENZYME n 
addmsg /kinetics/PKA-active /kinetics/PKA-active/phosph-PDE ENZYME n 
addmsg /kinetics/AC/cAMP-PDE /kinetics/PKA-active/phosph-PDE SUBSTRATE n 
addmsg /kinetics/Ras/CaM-bind-GEF /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/CaMKII/CaMKII-bind-CaM /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/CaMKII/CaMK-thr286-bind-CaM /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/CaM/CaM-Ca3-bind-Ca /kinetics/CaM-Ca4 REAC B A 
addmsg /kinetics/PP2B/CaMCa4-bind-CaNAB /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/AC/CaM-bind-AC1 /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/AC/CaM_bind_PDE1 /kinetics/CaM-Ca4 REAC A B 
addmsg /kinetics/CaMKII/CaMKII-bind-CaM /kinetics/CaMKII/CaMKII REAC A B 
addmsg /kinetics/PP1-active/Deph-thr306 /kinetics/CaMKII/CaMKII MM_PRD pA 
addmsg /kinetics/PP1-active/Deph_thr286b /kinetics/CaMKII/CaMKII MM_PRD pA 
addmsg /kinetics/CaMKII/basal-activity /kinetics/CaMKII/CaMKII REAC A B 
addmsg /kinetics/CaMKII/CaMKII-bind-CaM /kinetics/CaMKII/CaMKII-CaM REAC B A 
addmsg /kinetics/PP1-active/Deph-thr286 /kinetics/CaMKII/CaMKII-CaM MM_PRD pA 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII/CaMKII-CaM REAC sA B 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 /kinetics/CaMKII/CaMKII-CaM REAC sA B 
addmsg /kinetics/CaMKII/CaMK-thr286-bind-CaM /kinetics/CaMKII/CaMKII-thr286*-CaM REAC B A 
addmsg /kinetics/PP1-active/Deph-thr286 /kinetics/CaMKII/CaMKII-thr286*-CaM REAC sA B 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII/CaMKII-thr286*-CaM MM_PRD pA 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 /kinetics/CaMKII/CaMKII-thr286*-CaM MM_PRD pA 
addmsg /kinetics/PP1-active/Deph-thr305 /kinetics/CaMKII/CaMKII*** REAC sA B 
addmsg /kinetics/PP1-active/Deph-thr286c /kinetics/CaMKII/CaMKII*** REAC sA B 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII/CaMKII*** MM_PRD pA 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 /kinetics/CaMKII/CaMKII*** MM_PRD pA 
addmsg /kinetics/CaM-Ca4 /kinetics/CaMKII/CaMKII-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaMKII/CaMKII /kinetics/CaMKII/CaMKII-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaMKII/CaMKII-CaM /kinetics/CaMKII/CaMKII-bind-CaM PRODUCT n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/CaMKII/CaMK-thr286-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaM-Ca4 /kinetics/CaMKII/CaMK-thr286-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaMKII/CaMKII-thr286*-CaM /kinetics/CaMKII/CaMK-thr286-bind-CaM PRODUCT n 
addmsg /kinetics/CaMKII/CaMK-thr286-bind-CaM /kinetics/CaMKII/CaMKII-thr286 REAC A B 
addmsg /kinetics/PP1-active/Deph-thr305 /kinetics/CaMKII/CaMKII-thr286 MM_PRD pA 
addmsg /kinetics/PP1-active/Deph_thr286b /kinetics/CaMKII/CaMKII-thr286 REAC sA B 
addmsg /kinetics/CaMKII/basal-activity /kinetics/CaMKII/CaMKII-thr286 REAC B A 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII/CaMKII-thr286 REAC sA B 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 /kinetics/CaMKII/CaMKII-thr286 REAC sA B 
addmsg /kinetics/PP1-active/Deph-thr306 /kinetics/CaMKII/CaMK-thr306 REAC sA B 
addmsg /kinetics/PP1-active/Deph-thr286c /kinetics/CaMKII/CaMK-thr306 MM_PRD pA 
addmsg /kinetics/CaMKII/CaMKII /kinetics/CaMKII/basal-activity SUBSTRATE n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/CaMKII/basal-activity PRODUCT n 
addmsg /kinetics/CaMKII/CaMKII-CaM /kinetics/CaMKII/tot_CaM_CaMKII SUMTOTAL n nInit 
addmsg /kinetics/CaMKII/CaMKII-thr286*-CaM /kinetics/CaMKII/tot_CaM_CaMKII SUMTOTAL n nInit 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII/tot_CaM_CaMKII REAC eA B 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII/tot_CaM_CaMKII REAC eA B 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 SUBSTRATE n 
addmsg /kinetics/CaMKII/total-CaMKII /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_305 INTRAMOL n 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-CaM /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 SUBSTRATE n 
addmsg /kinetics/CaMKII/total-CaMKII /kinetics/CaMKII/tot_CaM_CaMKII/CaM_act_286 INTRAMOL n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/CaMKII/tot_autonomous_CaMKII SUMTOTAL n nInit 
addmsg /kinetics/CaMKII/CaMKII*** /kinetics/CaMKII/tot_autonomous_CaMKII SUMTOTAL n nInit 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 /kinetics/CaMKII/tot_autonomous_CaMKII REAC eA B 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 /kinetics/CaMKII/tot_autonomous_CaMKII REAC eA B 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 SUBSTRATE n 
addmsg /kinetics/CaMKII/total-CaMKII /kinetics/CaMKII/tot_autonomous_CaMKII/auton_305 INTRAMOL n 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-CaM /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 SUBSTRATE n 
addmsg /kinetics/CaMKII/total-CaMKII /kinetics/CaMKII/tot_autonomous_CaMKII/auton_286 INTRAMOL n 
addmsg /kinetics/PP1-active/Deph-thr286 /kinetics/PP1-active REAC eA B 
addmsg /kinetics/PP1-active/Deph-thr305 /kinetics/PP1-active REAC eA B 
addmsg /kinetics/PP1-active/Deph-thr306 /kinetics/PP1-active REAC eA B 
addmsg /kinetics/PP1-active/Deph_thr286b /kinetics/PP1-active REAC eA B 
addmsg /kinetics/PP1-active/Deph-thr286c /kinetics/PP1-active REAC eA B 
addmsg /kinetics/PP1/Inact-PP1 /kinetics/PP1-active REAC A B 
addmsg /kinetics/PP1/dissoc-PP1-I1 /kinetics/PP1-active REAC B A 
addmsg /kinetics/PP1-active /kinetics/PP1-active/Deph-thr286 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-thr286*-CaM /kinetics/PP1-active/Deph-thr286 SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1-active/Deph-thr305 ENZYME n 
addmsg /kinetics/CaMKII/CaMKII*** /kinetics/PP1-active/Deph-thr305 SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1-active/Deph-thr306 ENZYME n 
addmsg /kinetics/CaMKII/CaMK-thr306 /kinetics/PP1-active/Deph-thr306 SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1-active/Deph-thr286c ENZYME n 
addmsg /kinetics/CaMKII/CaMKII*** /kinetics/PP1-active/Deph-thr286c SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1-active/Deph_thr286b ENZYME n 
addmsg /kinetics/CaMKII/CaMKII-thr286 /kinetics/PP1-active/Deph_thr286b SUBSTRATE n 
addmsg /kinetics/CaM/CaM-TR2-bind-Ca /kinetics/CaM/CaM REAC A B 
addmsg /kinetics/CaM/neurogranin-bind-CaM /kinetics/CaM/CaM REAC A B 
addmsg /kinetics/PKC-active/PKC-phosph-ng-CaM /kinetics/CaM/CaM MM_PRD pA 
addmsg /kinetics/CaM/CaM /kinetics/CaM/CaM-TR2-bind-Ca SUBSTRATE n 
addmsg /kinetics/CaM-TR2-Ca2 /kinetics/CaM/CaM-TR2-bind-Ca PRODUCT n 
addmsg /kinetics/Ca /kinetics/CaM/CaM-TR2-bind-Ca SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/CaM/CaM-TR2-bind-Ca SUBSTRATE n 
addmsg /kinetics/CaM-TR2-Ca2 /kinetics/CaM/CaM-TR2-Ca2-bind-Ca SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/CaM/CaM-TR2-Ca2-bind-Ca SUBSTRATE n 
addmsg /kinetics/CaM-Ca3 /kinetics/CaM/CaM-TR2-Ca2-bind-Ca PRODUCT n 
addmsg /kinetics/CaM-Ca3 /kinetics/CaM/CaM-Ca3-bind-Ca SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/CaM/CaM-Ca3-bind-Ca SUBSTRATE n 
addmsg /kinetics/CaM-Ca4 /kinetics/CaM/CaM-Ca3-bind-Ca PRODUCT n 
addmsg /kinetics/CaM/neurogranin-bind-CaM /kinetics/CaM/neurogranin-CaM REAC B A 
addmsg /kinetics/PKC-active/PKC-phosph-ng-CaM /kinetics/CaM/neurogranin-CaM REAC sA B 
addmsg /kinetics/CaM/neurogranin /kinetics/CaM/neurogranin-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaM/neurogranin-CaM /kinetics/CaM/neurogranin-bind-CaM PRODUCT n 
addmsg /kinetics/CaM/CaM /kinetics/CaM/neurogranin-bind-CaM SUBSTRATE n 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin /kinetics/CaM/neurogranin* REAC sA B 
addmsg /kinetics/PKC-active/PKC-phosph-neurogranin /kinetics/CaM/neurogranin* MM_PRD pA 
addmsg /kinetics/PKC-active/PKC-phosph-ng-CaM /kinetics/CaM/neurogranin* MM_PRD pA 
addmsg /kinetics/CaM/dephosph-neurogranin /kinetics/CaM/neurogranin* REAC A B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin /kinetics/CaM/neurogranin MM_PRD pA 
addmsg /kinetics/CaM/neurogranin-bind-CaM /kinetics/CaM/neurogranin REAC A B 
addmsg /kinetics/PKC-active/PKC-phosph-neurogranin /kinetics/CaM/neurogranin REAC sA B 
addmsg /kinetics/CaM/dephosph-neurogranin /kinetics/CaM/neurogranin REAC B A 
addmsg /kinetics/CaM/neurogranin* /kinetics/CaM/dephosph-neurogranin SUBSTRATE n 
addmsg /kinetics/CaM/neurogranin /kinetics/CaM/dephosph-neurogranin PRODUCT n 
addmsg /kinetics/CaM/CaM-TR2-Ca2-bind-Ca /kinetics/CaM-Ca3 REAC B A 
addmsg /kinetics/CaM/CaM-Ca3-bind-Ca /kinetics/CaM-Ca3 REAC A B 
addmsg /kinetics/PP2B/CaMCa3-bind-CaNAB /kinetics/CaM-Ca3 REAC A B 
addmsg /kinetics/CaM/CaM-TR2-bind-Ca /kinetics/CaM-TR2-Ca2 REAC B A 
addmsg /kinetics/CaM/CaM-TR2-Ca2-bind-Ca /kinetics/CaM-TR2-Ca2 REAC A B 
addmsg /kinetics/PP2B/CaM-Ca2-bind-CaNAB /kinetics/CaM-TR2-Ca2 REAC A B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin /kinetics/CaM(Ca)n-CaNAB REAC eA B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 /kinetics/CaM(Ca)n-CaNAB REAC eA B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* /kinetics/CaM(Ca)n-CaNAB REAC eA B 
addmsg /kinetics/PP2B/CaMCa4-CaNAB /kinetics/CaM(Ca)n-CaNAB SUMTOTAL n nInit 
addmsg /kinetics/PP2B/CaMCa3-CaNAB /kinetics/CaM(Ca)n-CaNAB SUMTOTAL n nInit 
addmsg /kinetics/PP2B/CaMCa2-CANAB /kinetics/CaM(Ca)n-CaNAB SUMTOTAL n nInit 
addmsg /kinetics/CaM(Ca)n-CaNAB /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin ENZYME n 
addmsg /kinetics/CaM/neurogranin* /kinetics/CaM(Ca)n-CaNAB/dephosph_neurogranin SUBSTRATE n 
addmsg /kinetics/CaM(Ca)n-CaNAB /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 ENZYME n 
addmsg /kinetics/PP1/I1* /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 SUBSTRATE n 
addmsg /kinetics/CaM(Ca)n-CaNAB /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* ENZYME n 
addmsg /kinetics/PP1/PP1-I1* /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* SUBSTRATE n 
addmsg /kinetics/PKA-active/PKA-phosph-I1 /kinetics/PP1/I1 REAC sA B 
addmsg /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM /kinetics/PP1/I1 MM_PRD pA 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 /kinetics/PP1/I1 MM_PRD pA 
addmsg /kinetics/PP2A/PP2A-dephosph-I1 /kinetics/PP1/I1 MM_PRD pA 
addmsg /kinetics/PP1/dissoc-PP1-I1 /kinetics/PP1/I1 REAC B A 
addmsg /kinetics/PP1/Inact-PP1 /kinetics/PP1/I1* REAC A B 
addmsg /kinetics/PKA-active/PKA-phosph-I1 /kinetics/PP1/I1* MM_PRD pA 
addmsg /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM /kinetics/PP1/I1* REAC sA B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph_inhib1 /kinetics/PP1/I1* REAC sA B 
addmsg /kinetics/PP2A/PP2A-dephosph-I1 /kinetics/PP1/I1* REAC sA B 
addmsg /kinetics/PP1/PP1-I1* /kinetics/PP1/Inact-PP1 PRODUCT n 
addmsg /kinetics/PP1/I1* /kinetics/PP1/Inact-PP1 SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1/Inact-PP1 SUBSTRATE n 
addmsg /kinetics/PP1/Inact-PP1 /kinetics/PP1/PP1-I1* REAC B A 
addmsg /kinetics/PP2A/PP2A-dephosph-PP1-I* /kinetics/PP1/PP1-I1* REAC sA B 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* /kinetics/PP1/PP1-I1* REAC sA B 
addmsg /kinetics/PP1/dissoc-PP1-I1 /kinetics/PP1/PP1-I1 REAC A B 
addmsg /kinetics/PP2A/PP2A-dephosph-PP1-I* /kinetics/PP1/PP1-I1 MM_PRD pA 
addmsg /kinetics/CaM(Ca)n-CaNAB/dephosph-PP1-I* /kinetics/PP1/PP1-I1 MM_PRD pA 
addmsg /kinetics/PP1/PP1-I1 /kinetics/PP1/dissoc-PP1-I1 SUBSTRATE n 
addmsg /kinetics/PP1-active /kinetics/PP1/dissoc-PP1-I1 PRODUCT n 
addmsg /kinetics/PP1/I1 /kinetics/PP1/dissoc-PP1-I1 PRODUCT n 
addmsg /kinetics/PP2A/PP2A-dephosph-I1 /kinetics/PP2A REAC eA B 
addmsg /kinetics/PP2A/PP2A-dephosph-PP1-I* /kinetics/PP2A REAC eA B 
addmsg /kinetics/PP2A /kinetics/PP2A/PP2A-dephosph-I1 ENZYME n 
addmsg /kinetics/PP1/I1* /kinetics/PP2A/PP2A-dephosph-I1 SUBSTRATE n 
addmsg /kinetics/PP2A /kinetics/PP2A/PP2A-dephosph-PP1-I* ENZYME n 
addmsg /kinetics/PP1/PP1-I1* /kinetics/PP2A/PP2A-dephosph-PP1-I* SUBSTRATE n 
addmsg /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM /kinetics/CaNAB-Ca4 REAC eA B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB-Ca2 /kinetics/CaNAB-Ca4 REAC B A 
addmsg /kinetics/PP2B/CaM-Ca2-bind-CaNAB /kinetics/CaNAB-Ca4 REAC A B 
addmsg /kinetics/PP2B/CaMCa4-bind-CaNAB /kinetics/CaNAB-Ca4 REAC A B 
addmsg /kinetics/PP2B/CaMCa3-bind-CaNAB /kinetics/CaNAB-Ca4 REAC A B 
addmsg /kinetics/CaNAB-Ca4 /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM ENZYME n 
addmsg /kinetics/PP1/I1* /kinetics/CaNAB-Ca4/dephosph_inhib1_noCaM SUBSTRATE n 
addmsg /kinetics/PP2B/Ca-bind-CaNAB /kinetics/PP2B/CaNAB REAC A B 
addmsg /kinetics/PP2B/Ca-bind-CaNAB /kinetics/PP2B/CaNAB-Ca2 REAC B A 
addmsg /kinetics/PP2B/Ca-bind-CaNAB-Ca2 /kinetics/PP2B/CaNAB-Ca2 REAC A B 
addmsg /kinetics/CaNAB-Ca4 /kinetics/PP2B/Ca-bind-CaNAB-Ca2 PRODUCT n 
addmsg /kinetics/Ca /kinetics/PP2B/Ca-bind-CaNAB-Ca2 SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/PP2B/Ca-bind-CaNAB-Ca2 SUBSTRATE n 
addmsg /kinetics/PP2B/CaNAB-Ca2 /kinetics/PP2B/Ca-bind-CaNAB-Ca2 SUBSTRATE n 
addmsg /kinetics/PP2B/CaNAB /kinetics/PP2B/Ca-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B/CaNAB-Ca2 /kinetics/PP2B/Ca-bind-CaNAB PRODUCT n 
addmsg /kinetics/Ca /kinetics/PP2B/Ca-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/Ca /kinetics/PP2B/Ca-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/CaNAB-Ca4 /kinetics/PP2B/CaM-Ca2-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/CaM-TR2-Ca2 /kinetics/PP2B/CaM-Ca2-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B/CaMCa2-CANAB /kinetics/PP2B/CaM-Ca2-bind-CaNAB PRODUCT n 
addmsg /kinetics/PP2B/CaMCa3-bind-CaNAB /kinetics/PP2B/CaMCa3-CaNAB REAC B A 
addmsg /kinetics/PP2B/CaM-Ca2-bind-CaNAB /kinetics/PP2B/CaMCa2-CANAB REAC B A 
addmsg /kinetics/PP2B/CaMCa4-bind-CaNAB /kinetics/PP2B/CaMCa4-CaNAB REAC B A 
addmsg /kinetics/PP2B/CaMCa3-CaNAB /kinetics/PP2B/CaMCa3-bind-CaNAB PRODUCT n 
addmsg /kinetics/CaM-Ca3 /kinetics/PP2B/CaMCa3-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/CaNAB-Ca4 /kinetics/PP2B/CaMCa3-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B/CaMCa4-CaNAB /kinetics/PP2B/CaMCa4-bind-CaNAB PRODUCT n 
addmsg /kinetics/CaM-Ca4 /kinetics/PP2B/CaMCa4-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/CaNAB-Ca4 /kinetics/PP2B/CaMCa4-bind-CaNAB SUBSTRATE n 
addmsg /kinetics/PKA/cAMP-bind-site-B1 /kinetics/PKA/R2C2 REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-B1 /kinetics/PKA/R2C2-cAMP REAC B A 
addmsg /kinetics/PKA/cAMP-bind-site-B2 /kinetics/PKA/R2C2-cAMP REAC A B 
addmsg /kinetics/PKA/R2C2 /kinetics/PKA/cAMP-bind-site-B1 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP /kinetics/PKA/cAMP-bind-site-B1 PRODUCT n 
addmsg /kinetics/cAMP /kinetics/PKA/cAMP-bind-site-B1 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP /kinetics/PKA/cAMP-bind-site-B2 SUBSTRATE n 
addmsg /kinetics/cAMP /kinetics/PKA/cAMP-bind-site-B2 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP2 /kinetics/PKA/cAMP-bind-site-B2 PRODUCT n 
addmsg /kinetics/PKA/R2C2-cAMP2 /kinetics/PKA/cAMP-bind-site-A1 SUBSTRATE n 
addmsg /kinetics/cAMP /kinetics/PKA/cAMP-bind-site-A1 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP3 /kinetics/PKA/cAMP-bind-site-A1 PRODUCT n 
addmsg /kinetics/cAMP /kinetics/PKA/cAMP-bind-site-A2 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP3 /kinetics/PKA/cAMP-bind-site-A2 SUBSTRATE n 
addmsg /kinetics/PKA/R2C2-cAMP4 /kinetics/PKA/cAMP-bind-site-A2 PRODUCT n 
addmsg /kinetics/PKA/cAMP-bind-site-B2 /kinetics/PKA/R2C2-cAMP2 REAC B A 
addmsg /kinetics/PKA/cAMP-bind-site-A1 /kinetics/PKA/R2C2-cAMP2 REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-A1 /kinetics/PKA/R2C2-cAMP3 REAC B A 
addmsg /kinetics/PKA/cAMP-bind-site-A2 /kinetics/PKA/R2C2-cAMP3 REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-A2 /kinetics/PKA/R2C2-cAMP4 REAC B A 
addmsg /kinetics/PKA/Release-C1 /kinetics/PKA/R2C2-cAMP4 REAC A B 
addmsg /kinetics/PKA/Release-C1 /kinetics/PKA/R2C-cAMP4 REAC B A 
addmsg /kinetics/PKA/Release-C2 /kinetics/PKA/R2C-cAMP4 REAC A B 
addmsg /kinetics/PKA/Release-C2 /kinetics/PKA/R2-cAMP4 REAC B A 
addmsg /kinetics/PKA/R2C2-cAMP4 /kinetics/PKA/Release-C1 SUBSTRATE n 
addmsg /kinetics/PKA-active /kinetics/PKA/Release-C1 PRODUCT n 
addmsg /kinetics/PKA/R2C-cAMP4 /kinetics/PKA/Release-C1 PRODUCT n 
addmsg /kinetics/PKA/R2C-cAMP4 /kinetics/PKA/Release-C2 SUBSTRATE n 
addmsg /kinetics/PKA-active /kinetics/PKA/Release-C2 PRODUCT n 
addmsg /kinetics/PKA/R2-cAMP4 /kinetics/PKA/Release-C2 PRODUCT n 
addmsg /kinetics/PKA/inhib-PKA /kinetics/PKA/PKA-inhibitor REAC A B 
addmsg /kinetics/PKA-active /kinetics/PKA/inhib-PKA SUBSTRATE n 
addmsg /kinetics/PKA/PKA-inhibitor /kinetics/PKA/inhib-PKA SUBSTRATE n 
addmsg /kinetics/PKA/inhibited-PKA /kinetics/PKA/inhib-PKA PRODUCT n 
addmsg /kinetics/PKA/inhib-PKA /kinetics/PKA/inhibited-PKA REAC B A 
addmsg /kinetics/PKA/cAMP-bind-site-B1 /kinetics/cAMP REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-B2 /kinetics/cAMP REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-A1 /kinetics/cAMP REAC A B 
addmsg /kinetics/PKA/cAMP-bind-site-A2 /kinetics/cAMP REAC A B 
addmsg /kinetics/AC/AC2*/kenz /kinetics/cAMP MM_PRD pA 
addmsg /kinetics/AC/AC2-Gs/kenz /kinetics/cAMP MM_PRD pA 
addmsg /kinetics/AC/AC1-CaM/kenz /kinetics/cAMP MM_PRD pA 
addmsg /kinetics/AC/AC1-Gs/kenz /kinetics/cAMP MM_PRD pA 
addmsg /kinetics/AC/AC2*-Gs/kenz /kinetics/cAMP MM_PRD pA 
addmsg /kinetics/AC/cAMP-PDE*/PDE* /kinetics/cAMP REAC sA B 
addmsg /kinetics/AC/cAMP-PDE/PDE /kinetics/cAMP REAC sA B 
addmsg /kinetics/AC/PDE1/PDE1 /kinetics/cAMP REAC sA B 
addmsg /kinetics/AC/CaM.PDE1/CaM.PDE1 /kinetics/cAMP REAC sA B 
addmsg /kinetics/AC/AC2*/kenz /kinetics/AC/ATP REAC sA B 
addmsg /kinetics/AC/AC2-Gs/kenz /kinetics/AC/ATP REAC sA B 
addmsg /kinetics/AC/AC1-CaM/kenz /kinetics/AC/ATP REAC sA B 
addmsg /kinetics/AC/AC1-Gs/kenz /kinetics/AC/ATP REAC sA B 
addmsg /kinetics/AC/AC2*-Gs/kenz /kinetics/AC/ATP REAC sA B 
addmsg /kinetics/AC/CaM-bind-AC1 /kinetics/AC/AC1-CaM REAC B A 
addmsg /kinetics/AC/AC1-CaM /kinetics/AC/AC1-CaM/kenz ENZYME n 
addmsg /kinetics/AC/ATP /kinetics/AC/AC1-CaM/kenz SUBSTRATE n 
addmsg /kinetics/AC/CaM-bind-AC1 /kinetics/AC/AC1 REAC A B 
addmsg /kinetics/AC/Gs-bind-AC1 /kinetics/AC/AC1 REAC A B 
addmsg /kinetics/CaM-Ca4 /kinetics/AC/CaM-bind-AC1 SUBSTRATE n 
addmsg /kinetics/AC/AC1-CaM /kinetics/AC/CaM-bind-AC1 PRODUCT n 
addmsg /kinetics/AC/AC1 /kinetics/AC/CaM-bind-AC1 SUBSTRATE n 
addmsg /kinetics/PKC-active/phosph-AC2 /kinetics/AC/AC2* MM_PRD pA 
addmsg /kinetics/AC/dephosph-AC2 /kinetics/AC/AC2* REAC A B 
addmsg /kinetics/AC/Gs-bind-AC2* /kinetics/AC/AC2* REAC A B 
addmsg /kinetics/AC/AC2* /kinetics/AC/AC2*/kenz ENZYME n 
addmsg /kinetics/AC/ATP /kinetics/AC/AC2*/kenz SUBSTRATE n 
addmsg /kinetics/AC/Gs-bind-AC2 /kinetics/AC/AC2-Gs REAC B A 
addmsg /kinetics/AC/AC2-Gs /kinetics/AC/AC2-Gs/kenz ENZYME n 
addmsg /kinetics/AC/ATP /kinetics/AC/AC2-Gs/kenz SUBSTRATE n 
addmsg /kinetics/AC/Gs-bind-AC2 /kinetics/AC/AC2 REAC A B 
addmsg /kinetics/PKC-active/phosph-AC2 /kinetics/AC/AC2 REAC sA B 
addmsg /kinetics/AC/dephosph-AC2 /kinetics/AC/AC2 REAC B A 
addmsg /kinetics/AC/AC2* /kinetics/AC/dephosph-AC2 SUBSTRATE n 
addmsg /kinetics/AC/AC2 /kinetics/AC/dephosph-AC2 PRODUCT n 
addmsg /kinetics/AC/Gs-bind-AC1 /kinetics/AC/AC1-Gs REAC B A 
addmsg /kinetics/AC/AC1-Gs /kinetics/AC/AC1-Gs/kenz ENZYME n 
addmsg /kinetics/AC/ATP /kinetics/AC/AC1-Gs/kenz SUBSTRATE n 
addmsg /kinetics/AC/AC2 /kinetics/AC/Gs-bind-AC2 SUBSTRATE n 
addmsg /kinetics/AC/AC2-Gs /kinetics/AC/Gs-bind-AC2 PRODUCT n 
addmsg /kinetics/Gs-alpha /kinetics/AC/Gs-bind-AC2 SUBSTRATE n 
addmsg /kinetics/Gs-alpha /kinetics/AC/Gs-bind-AC1 SUBSTRATE n 
addmsg /kinetics/AC/AC1 /kinetics/AC/Gs-bind-AC1 SUBSTRATE n 
addmsg /kinetics/AC/AC1-Gs /kinetics/AC/Gs-bind-AC1 PRODUCT n 
addmsg /kinetics/AC/cAMP-PDE*/PDE* /kinetics/AC/AMP MM_PRD pA 
addmsg /kinetics/AC/cAMP-PDE/PDE /kinetics/AC/AMP MM_PRD pA 
addmsg /kinetics/AC/CaM.PDE1/CaM.PDE1 /kinetics/AC/AMP MM_PRD pA 
addmsg /kinetics/AC/PDE1/PDE1 /kinetics/AC/AMP MM_PRD pA 
addmsg /kinetics/AC/Gs-bind-AC2* /kinetics/AC/AC2*-Gs REAC B A 
addmsg /kinetics/AC/AC2*-Gs /kinetics/AC/AC2*-Gs/kenz ENZYME n 
addmsg /kinetics/AC/ATP /kinetics/AC/AC2*-Gs/kenz SUBSTRATE n 
addmsg /kinetics/Gs-alpha /kinetics/AC/Gs-bind-AC2* SUBSTRATE n 
addmsg /kinetics/AC/AC2*-Gs /kinetics/AC/Gs-bind-AC2* PRODUCT n 
addmsg /kinetics/AC/AC2* /kinetics/AC/Gs-bind-AC2* SUBSTRATE n 
addmsg /kinetics/AC/cAMP-PDE/PDE /kinetics/AC/cAMP-PDE REAC eA B 
addmsg /kinetics/AC/dephosph-PDE /kinetics/AC/cAMP-PDE REAC B A 
addmsg /kinetics/PKA-active/phosph-PDE /kinetics/AC/cAMP-PDE REAC sA B 
addmsg /kinetics/AC/cAMP-PDE /kinetics/AC/cAMP-PDE/PDE ENZYME n 
addmsg /kinetics/cAMP /kinetics/AC/cAMP-PDE/PDE SUBSTRATE n 
addmsg /kinetics/AC/cAMP-PDE*/PDE* /kinetics/AC/cAMP-PDE* REAC eA B 
addmsg /kinetics/AC/dephosph-PDE /kinetics/AC/cAMP-PDE* REAC A B 
addmsg /kinetics/PKA-active/phosph-PDE /kinetics/AC/cAMP-PDE* MM_PRD pA 
addmsg /kinetics/AC/cAMP-PDE* /kinetics/AC/cAMP-PDE*/PDE* ENZYME n 
addmsg /kinetics/cAMP /kinetics/AC/cAMP-PDE*/PDE* SUBSTRATE n 
addmsg /kinetics/AC/cAMP-PDE* /kinetics/AC/dephosph-PDE SUBSTRATE n 
addmsg /kinetics/AC/cAMP-PDE /kinetics/AC/dephosph-PDE PRODUCT n 
addmsg /kinetics/AC/PDE1/PDE1 /kinetics/AC/PDE1 REAC eA B 
addmsg /kinetics/AC/CaM_bind_PDE1 /kinetics/AC/PDE1 REAC A B 
addmsg /kinetics/AC/PDE1 /kinetics/AC/PDE1/PDE1 ENZYME n 
addmsg /kinetics/cAMP /kinetics/AC/PDE1/PDE1 SUBSTRATE n 
addmsg /kinetics/AC/CaM.PDE1/CaM.PDE1 /kinetics/AC/CaM.PDE1 REAC eA B 
addmsg /kinetics/AC/CaM_bind_PDE1 /kinetics/AC/CaM.PDE1 REAC B A 
addmsg /kinetics/AC/CaM.PDE1 /kinetics/AC/CaM.PDE1/CaM.PDE1 ENZYME n 
addmsg /kinetics/cAMP /kinetics/AC/CaM.PDE1/CaM.PDE1 SUBSTRATE n 
addmsg /kinetics/AC/PDE1 /kinetics/AC/CaM_bind_PDE1 SUBSTRATE n 
addmsg /kinetics/AC/CaM.PDE1 /kinetics/AC/CaM_bind_PDE1 PRODUCT n 
addmsg /kinetics/CaM-Ca4 /kinetics/AC/CaM_bind_PDE1 SUBSTRATE n 
addmsg /kinetics/AC/Gs-bind-AC2 /kinetics/Gs-alpha REAC A B 
addmsg /kinetics/AC/Gs-bind-AC1 /kinetics/Gs-alpha REAC A B 
addmsg /kinetics/AC/Gs-bind-AC2* /kinetics/Gs-alpha REAC A B 
addmsg /kinetics/Glu /kinetics/remove_glu SUBSTRATE n 
addmsg /kinetics/synapse /kinetics/remove_glu PRODUCT n 
addmsg /kinetics/remove_glu /kinetics/synapse REAC B A 
addmsg /kinetics/stim /kinetics/synapse SLAVE output 
addmsg /kinetics/CaMKII/tot_CaM_CaMKII /kinetics/CaMKII-act SUMTOTAL n nInit 
addmsg /kinetics/CaMKII/tot_autonomous_CaMKII /kinetics/CaMKII-act SUMTOTAL n nInit 
addmsg /kinetics/CaM(Ca)n-CaNAB /kinetics/CaN-active SUMTOTAL n nInit 
addmsg /kinetics/CaNAB-Ca4 /kinetics/CaN-active SUMTOTAL n nInit 
addmsg /kinetics/PP1-active /kinetics/tot_PP1-act SUMTOTAL n nInit 
addmsg /kinetics/PP1-active/Deph-thr286 /kinetics/tot_PP1-act SUMTOTAL nComplex nComplexInit 
addmsg /kinetics/PP1-active/Deph-thr305 /kinetics/tot_PP1-act SUMTOTAL nComplex nComplexInit 
addmsg /kinetics/PP1-active/Deph-thr286c /kinetics/tot_PP1-act SUMTOTAL nComplex nComplexInit 
addmsg /kinetics/PP1-active/Deph_thr286b /kinetics/tot_PP1-act SUMTOTAL nComplex nComplexInit 
addmsg /kinetics/PP1-active/Deph-thr306 /kinetics/tot_PP1-act SUMTOTAL nComplex nComplexInit 
addmsg /kinetics/PKC-active /graphs/conc1/PKC-active.Co PLOT Co *PKC-active.Co *red 
addmsg /kinetics/MAPK* /graphs/conc1/MAPK*.Co PLOT Co *MAPK*.Co *orange 
addmsg /kinetics/PKA-active /graphs/conc2/PKA-active.Co PLOT Co *PKA-active.Co *yellow 
addmsg /kinetics/CaMKII-act /moregraphs/conc3/CaMKII-act.Co PLOT Co *CaMKII-act.Co *blue 
addmsg /kinetics/Ca /moregraphs/conc3/Ca.Co PLOT Co *Ca.Co *red 
addmsg /kinetics/CaN-active /moregraphs/conc4/CaN-active.Co PLOT Co *CaN-active.Co *blue 
addmsg /kinetics/tot_PP1-act /moregraphs/conc4/tot_PP1-act.Co PLOT Co *tot_PP1-act.Co *red 
enddump
// End of dump

setfield /kinetics/Ca_tab table->dx 1
setfield /kinetics/Ca_tab table->invdx 1
call /kinetics/tot_PP1-act/notes LOAD \
" tot_PP1 has inputs from Deph-thr286, PP1-active, Deph-thr305, Deph-thr286c, Deph-thr286b,Deph-thr305. except PP1-active all other inputs are enzyme-substrate complex which is not currently supported by doqcs." \
"But can be accessed from GENESIS file."
call /kinetics/doqcsinfo/notes LOAD \
"This is the composite model of 4 kinases: PKC, MAPK, PKA and CaMKII and numerous regulatory pathways involved in synaptic signaling. From <a href =http://www.ncbi.nlm.nih.gov:80/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9888852&dopt=Abstract>Bhalla US and Iyengar R. Science (1999) 283(5400):381-7</a>.This model comes from figure 4 of that paper." \
"Demonstration script files for generating the figures in the paper, including figure 4, are available <a href=http://www.ncbs.res.in/~bhalla/ltploop/ltploop/demos/>here</a>."
complete_loading
