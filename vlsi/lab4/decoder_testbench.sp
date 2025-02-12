* Decoder testbench

.lib '/home/ff/eecs251b/sky130/sky130_cds/sky130_release_0.0.4/models/sky130.lib.spice' tt
.include '../build/lab4/pex-rundir/decoder.post.sp'

vvdd vdd 0 1.8
vgnd vss 0 0
vin a0 0 0 PULSE(0 1.8 0 50p 50p 2n 4n)

xdecoder z2 z14 vdd z12 z10 z8 z3 vss vss vss z5 vss z15 z0 z9 a0 z11 z4 z13 z6 vss z7 z1 decoder

c0 z0 vss 2E-15
c1 z1 vss 2E-15
c2 z2 vss 2E-15
c3 z3 vss 2E-15
c4 z4 vss 2E-15
c5 z5 vss 2E-15
c6 z6 vss 2E-15
c7 z7 vss 2E-15
c8 z8 vss 2E-15
c9 z9 vss 2E-15
c10 z10 vss 2E-15
c11 z11 vss 2E-15
c12 z12 vss 2E-15
c13 z13 vss 2E-15
c14 z14 vss 2E-15
c15 z15 vss 2E-15

.tran 10p 4n

.probe v(a0) v(z1)
.meas tran tplh trig v(a0) val='1.8/2' rise=1 targ v(z1) val='1.8/2' rise=1
.meas tran vdd_power AVG power from=0ns to=4ns

.END
