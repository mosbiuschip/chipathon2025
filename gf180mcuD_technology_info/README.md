# Information about the GF180 Technology (gf180mcuD) and Design Examples

## Documentation
- [Open PDK Documentation](https://gf180mcu-pdk.readthedocs.io/en/latest/index.html)
- [Definition of the Process Variant](https://github.com/RTimothyEdwards/open_pdks/blob/master/gf180mcu/Makefile.in)

## Process Variant
From [Definition of the Process Variant](https://github.com/RTimothyEdwards/open_pdks/blob/master/gf180mcu/Makefile.in): 
> GF180MCU uses the same base process as
> other GF180 processes.  However, instead of a thin oxide gate, the base
> oxide is a thick oxide, and the thick oxide mask defines a thicker oxide.
> The process DRC rules then follow the rule sets for thick oxide devices,
> so the minimum length transistor is 280nm, making this much more like a
> 0.28um process than a 0.18um process.

> gf180mcuD   =  METALS5 | MIM | THICKMET1P1 | HRPOLY1K

- [Overview of MOS Devices](./devices.md)
- [Metal Layer Stack](metal_stack.md) 
   - Five layers of metal
   - Top metal (5) is 1.1 $\mu m$ thick
- MIM capacitor 
   - Between top metal (5) and the metal below (4)
   - MIM capacitor density is 2 fF per $\mu m^2$
- High sheet-resistivity poly resistor (1K $\Omega$ /square)

## Design Examples

### SSCS 2023 Chipathon 
| Name | Link | Blocks | 
| --- | --- | --- |
| LTC3 | https://github.com/gabrielmaranhao/Bracolin/tree/main | Clock_Reference, Current_Source, SAR_ADC, TIA_Filter, Voltage_Reference |
| LTC2 | https://github.com/akiles-esta-usado/DC23-LTC2/tree/f6358b6aff1b4526a014195b640335f1def6f0c5/padframe |
| LTC1 | https://github.com/Azeem-Abbas/DC23-LTC1/tree/main | DAC, Clock Generator, Scope input & MUX, ADC, AWG output & MUX, Clock Generator | 



### Papers
| Title | Type | Link |
|-------|------|------|
| Design and Test of Offset Quadrature Phase-Shift Keying Modulator with GF180MCU Open Source Process Design Kit | Paper | [Link](https://www.mdpi.com/2079-9292/13/9/1705) |
| Open Source Chip Design on GF180MCU – A foundry perspective, Karthik Chandrasekaran, Global Foundries | Conference | No link available[^1] |
| An Open-Source AMS Circuit Optimization Framework Based on Reinforcement Learning—From Specifications to Layouts | Paper | [Link](https://ieeexplore.ieee.org/document/10714341) |
| Rapid Prototyping of Laser-Induced Graphene Sensors With Open-Source Silicon: Paving the Way for Low-Cost and Robust Flexible Wearable Sensing | Paper | [Link](https://ieeexplore.ieee.org/document/10584418) |
| LIG-OSS: Integrated Laser-Induced-Graphene Sensor and Open-Source Silicon Chip for an Affordable and Robust Wearable Sensing System with Precise Temperature, Humidity, and Strain Sensing Capability | Paper | [Link](https://ieeexplore.ieee.org/document/10639937) |





[^1]: If you have a link, please [file an issue](https://github.com/mosbiuschip/chipathon2025/issues/new) and let us know. 


