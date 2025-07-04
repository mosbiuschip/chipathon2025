v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -300 680 -270 {lab=VDD}
N 680 -130 680 -90 {lab=VSS}
N 600 -200 640 -200 {lab=Vin}
N 830 -200 860 -200 {lab=Vout}
N 850 -200 850 -170 {lab=Vout}
N 850 -110 850 -70 {lab=VSS}
N 150 -210 150 -170 {lab=VSS}
N 230 -210 230 -170 {lab=VSS}
N 50 -310 50 -270 {lab=VSS}
N 50 -210 50 -170 {lab=GND}
N 150 -320 150 -270 {lab=VDD}
N 230 -320 230 -270 {lab=Vin}
C {inverter.sym} 740 -80 0 0 {name=x1}
C {lab_wire.sym} 680 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 680 -90 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -200 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 860 -200 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 850 -140 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 850 -70 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 20 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 50 -240 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 150 -240 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 230 -240 0 0 {name=Vin value="PULSE(0 3.3 0 5n 5n 1u 2u)" savecurrent=false}
C {lab_wire.sym} 150 -170 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -170 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 50 -310 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 50 -170 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 150 -320 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -320 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 960 -90 0 0 {name=SPICE only_toplevel=false value="
.control
tran 1n 10u
save all
write inverter_tb_tran_gaw.raw
.endc
"}
