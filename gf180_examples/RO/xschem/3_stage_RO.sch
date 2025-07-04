v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -260 170 -230 {lab=VDD}
N 170 -90 170 -50 {lab=VSS}
N 90 -160 130 -160 {lab=n1}
N 400 -260 400 -230 {lab=VDD}
N 400 -90 400 -50 {lab=VSS}
N 320 -160 360 -160 {lab=n2}
N 630 -260 630 -230 {lab=VDD}
N 630 -90 630 -50 {lab=VSS}
N 550 -160 590 -160 {lab=n3}
N 780 -160 820 -160 {lab=n1}
N 290 -120 290 -80 {lab=n2}
N 530 -120 530 -80 {lab=n3}
N 800 -120 800 -80 {lab=n1}
N 290 -20 290 20 {lab=VSS}
N 530 -20 530 20 {lab=VSS}
N 800 -20 800 20 {lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 230 -40 0 0 {name=x1}
C {lab_wire.sym} 170 -260 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -50 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 460 -40 0 0 {name=x2}
C {lab_wire.sym} 400 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -50 2 1 {name=p3 sig_type=std_logic lab=VSS}
C {/foss/designs/Chipathon2025_gf180/gf180_examples/inverter/xschem/inverter.sym} 690 -40 0 0 {name=x3}
C {lab_wire.sym} 630 -260 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 630 -50 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -160 0 1 {name=p6 sig_type=std_logic lab=n1}
C {lab_wire.sym} 330 -160 0 1 {name=p8 sig_type=std_logic lab=n2}
C {lab_wire.sym} 560 -160 0 1 {name=p9 sig_type=std_logic lab=n3}
C {iopin.sym} -90 -230 0 0 {name=p10 lab=VDD}
C {iopin.sym} -90 -190 0 0 {name=p11 lab=VSS}
C {iopin.sym} -90 -150 0 0 {name=p12 lab=n1}
C {lab_wire.sym} 100 -160 0 0 {name=p13 sig_type=std_logic lab=n1}
C {capa-2.sym} 290 -50 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 530 -50 0 0 {name=C2
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 800 -50 0 0 {name=C3
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 290 -120 0 1 {name=p14 sig_type=std_logic lab=n2}
C {lab_wire.sym} 530 -120 0 1 {name=p15 sig_type=std_logic lab=n3}
C {lab_wire.sym} 800 -120 0 1 {name=p16 sig_type=std_logic lab=n1}
C {lab_wire.sym} 290 20 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 530 20 2 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 20 2 1 {name=p19 sig_type=std_logic lab=VSS}
