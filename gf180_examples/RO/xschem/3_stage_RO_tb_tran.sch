v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 -200 -240 -160 {lab=VSS}
N -340 -300 -340 -260 {lab=VSS}
N -340 -200 -340 -160 {lab=GND}
N -240 -310 -240 -260 {lab=VDD}
N 190 -360 190 -310 {lab=VDD}
N 190 -180 190 -140 {lab=VSS}
N 340 -260 380 -260 {lab=n1}
C {xschem/3_stage_RO.sym} 150 -180 0 0 {name=x1}
C {devices/code_shown.sym} -370 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} -340 -230 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -240 -230 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_wire.sym} -240 -160 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -340 -300 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} -340 -160 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -240 -310 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -360 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -140 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -260 0 1 {name=p3 sig_type=std_logic lab=n1}
C {code_shown.sym} 340 -100 0 0 {name=SPICE only_toplevel=false value="
.tran 1n 10u
.save all
.ic V(n1)=0
"}
C {noconn.sym} 380 -260 0 1 {name=l2}
