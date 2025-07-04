v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 500 -870 1300 -470 {flags=graph
y1=-0.06
y2=3.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout 
vin"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N 720 -390 720 -360 {lab=VDD}
N 720 -220 720 -180 {lab=VSS}
N 640 -290 680 -290 {lab=Vin}
N 890 -290 900 -290 {lab=Vout}
N 890 -290 890 -260 {lab=Vout}
N 890 -200 890 -160 {lab=VSS}
N 190 -300 190 -260 {lab=VSS}
N 270 -300 270 -260 {lab=VSS}
N 90 -400 90 -360 {lab=VSS}
N 90 -300 90 -260 {lab=GND}
N 190 -410 190 -360 {lab=VDD}
N 270 -410 270 -360 {lab=Vin}
N 870 -290 890 -290 {lab=Vout}
C {inverter.sym} 780 -170 0 0 {name=x1}
C {lab_wire.sym} 720 -390 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 720 -180 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 640 -290 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 900 -290 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 890 -230 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 890 -160 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 60 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 90 -330 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 190 -330 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 270 -330 0 0 {name=Vin value="PULSE(0 3.3 0 5n 5n 1u 2u)" savecurrent=false}
C {lab_wire.sym} 190 -260 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 270 -260 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 90 -400 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 90 -260 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 190 -410 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -410 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 1000 -180 0 0 {name=SPICE only_toplevel=false value=" 
.tran 1n 10u
.save all
"}
C {launcher.sym} 70 -800 0 0 {name=h5
descr="load waves (press ctrl + left click)" 
tclcommand="xschem raw_read $netlist_dir/inverter_tb_tran_xschem.raw tran"
}
