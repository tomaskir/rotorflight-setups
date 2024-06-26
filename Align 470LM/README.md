# Status
Fully flyable under all conditions and manuevers.

# Components
```
RF version:     2.0.0
Chassis:        470LM
FC:             Matek G474-Heli
ESC:            FlyColor X-Cross HV v3 80A
ESC Protocol:   DSHOT300
Telemetry Type: BLHeli32
Motor:          Align BL-470MX
RPM Signal:     Bi-Directional DSHOT
Cyclic Servos:  Nexspor CLS2310S
Tail Servo:     Nexspor CLS3507T
Main Blades:    Align 380mm
Tail Blades:    Align 74mm
BEC:            FC built-in 7.2V
RX:             Matek R24-D
RX Protocol:    CRSF
Air Protocol:   ExpressLRS 500 (LoRA)
```

# Connections
```
Sv1 - Cyclic Servo
Sv2 - Cyclic Servo
Sv3 - Cyclic Servo
Sv4 - Tail Servo
M1 - ESC
RX3 - ESC Telemetry
TX2 - RX
RX2 - RX
VBat - Battery
```

# Issues remaining
- Small tail disturbances / jumps when jabbing cyclic / collective, likely related to gov and precomps. Nothing bad, but it is visible.
- Roll to pitch coupling. Likely just needs some coupling adjustment.
