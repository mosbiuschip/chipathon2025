v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 670 -290 670 -260 {lab=VDD}
N 670 -120 670 -80 {lab=VSS}
N 590 -190 630 -190 {lab=Vin}
N 820 -190 850 -190 {lab=Vout}
N 840 -190 840 -160 {lab=Vout}
N 840 -100 840 -60 {lab=VSS}
N 140 -200 140 -160 {lab=VSS}
N 220 -200 220 -160 {lab=VSS}
N 40 -300 40 -260 {lab=VSS}
N 40 -200 40 -160 {lab=GND}
N 140 -310 140 -260 {lab=VDD}
N 220 -310 220 -260 {lab=Vin}
C {inverter.sym} 730 -70 0 0 {name=x1}
C {lab_wire.sym} 670 -290 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -80 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 590 -190 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 850 -190 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 840 -130 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 840 -60 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 10 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 40 -230 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 140 -230 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 220 -230 0 0 {name=Vin value="PULSE(0 3.3 0 5n 5n 1u 2u)" savecurrent=false}
C {lab_wire.sym} 140 -160 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 -160 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 40 -300 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 40 -160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 140 -310 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 220 -310 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 940 -200 0 0 {name=SPICE only_toplevel=false value="
.control
tran 1n 10u
save all

run 
set filetype=ascii
wrdata inverter_tb_tran.txt Vin Vout

.endc
"}
