# Status
Tuning in progress

# SAB Black Thunder

```
RF version:     2.0.0
Chassis:        SAB Black Thunder
FC:             FlyDragon F722 v2
ESC:            FlyColor X-Cross HV v3 160A
ESC Protocol:   DSHOT300
Telemetry Type: BLHeli32
Motor:          Xnova 4530 500kV
RPM Signal:     Bi-Directional DSHOT
Cyclic Servos:  Hitec HS-8360TH
Tail Servo:     Hitec HSG-8315BH
Main Blades:    SAB S700 700mm
Tail Blades:    SAB 105mm
BEC:            Hobbywing 25A 7.4V
RX:             FD R24D
RX Protocol:    CRSF
Air Protocol:   ExpressLRS 500 (LoRA)
```

# Connections
FC
```
CH1:    Cyclic Servo (PWM)
CH2:    Cyclic Servo (PWM)
CH3:    Cyclic Servo (PWM)
CH4:    Tail Servo (PWM)
ESC:    ESC Throttle (DSHOT)
RPM-E:  BEC (Power only)
SBUS:   ESC Telemetry (UART)
F.Port: Light Control (PWM)
```

BEC
```
Main Input: 12S Primary LiPo
Backup Input: 2S Backup LiPo

Output CH1: Light Switch
Output CH2: Light Control (to FC F.Port port)
Output CH3: 2nd Power to FC (to FC RPM-E port)
```
