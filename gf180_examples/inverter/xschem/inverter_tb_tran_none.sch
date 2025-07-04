v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -510 -350 -510 -320 {lab=VDD}
N -510 -180 -510 -140 {lab=VSS}
N -590 -250 -550 -250 {lab=Vin}
N -360 -250 -330 -250 {lab=Vout}
N -340 -250 -340 -220 {lab=Vout}
N -340 -160 -340 -120 {lab=VSS}
N -1040 -260 -1040 -220 {lab=VSS}
N -960 -260 -960 -220 {lab=VSS}
N -1140 -360 -1140 -320 {lab=VSS}
N -1140 -260 -1140 -220 {lab=GND}
N -1040 -370 -1040 -320 {lab=VDD}
N -960 -370 -960 -320 {lab=Vin}
C {inverter.sym} -450 -130 0 0 {name=x1}
C {lab_wire.sym} -510 -350 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -510 -140 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -590 -250 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -330 -250 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} -340 -190 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} -340 -120 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -1170 -150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} -1140 -290 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -1040 -290 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} -960 -290 0 0 {name=Vin value="PULSE(0 3.3 0 5n 5n 1u 2u)" savecurrent=false}
C {lab_wire.sym} -1040 -220 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -960 -220 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -1140 -360 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} -1140 -220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -1040 -370 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -960 -370 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} -230 -140 0 0 {name=SPICE only_toplevel=false value="
.tran 1n 10u
.save all
"}
