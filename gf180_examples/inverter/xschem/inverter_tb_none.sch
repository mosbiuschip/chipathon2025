v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -270 240 -240 {lab=VDD}
N 240 -100 240 -60 {lab=VSS}
N 160 -170 200 -170 {lab=Vin}
N 390 -170 420 -170 {lab=Vout}
N 410 -170 410 -140 {lab=Vout}
N 410 -80 410 -40 {lab=VSS}
N -80 -180 -80 -140 {lab=VSS}
N 10 -180 10 -140 {lab=VSS}
N -180 -280 -180 -240 {lab=VSS}
N -180 -180 -180 -140 {lab=GND}
N -80 -290 -80 -240 {lab=VDD}
N 10 -290 10 -240 {lab=Vin}
C {inverter.sym} 300 -50 0 0 {name=x1}
C {lab_wire.sym} 240 -270 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 -60 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -170 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 420 -170 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 410 -110 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 410 -40 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -420 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} -180 -210 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -80 -210 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 10 -210 0 0 {name=Vin value=0 savecurrent=false}
C {lab_wire.sym} -80 -140 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 10 -140 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -180 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} -180 -140 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -80 -290 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 10 -290 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 520 -60 0 0 {name=SPICE only_toplevel=false value="
.dc Vin 0 3.3 0.01
.save all
"}
