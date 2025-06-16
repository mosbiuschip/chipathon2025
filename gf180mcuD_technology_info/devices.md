# Devices in gf180mcuD

> ⚠️ <br>
> ⚠️ Warning: this was partly generated using an LLM. Double check the information before using or relying on it. <br>
> ⚠️ 
## MOSFET Device Table with SPICE Model Names

- Here is a list of MOS devices available in **gf180mcuD**
- Schematic label is referring to `/foss/pdks/gf180mcuD/libs.tech/xschem/tests/0_top.sch`


| Schematic Label            | Device Type                     | Voltage Rating | SPICE Model Name      | Notes                                    |
|---------------------------|----------------------------------|----------------|-----------------------|------------------------------------------|
| `test_nfet_03v3`          | Thick-oxide NMOS                | 3.3 V          | `nfet_03v3`           | For IO or level-shifting                 |
| `test_pfet_03v3`          | Thick-oxide PMOS                | 3.3 V          | `pfet_03v3`           |                                          |
| `test_nfet_03v3_dss`      | NMOS 3.3 V w/ DSS extension      | 3.3 V          | `nfet_03v3_dss`       | Extended drain for HV                    |
| `test_pfet_03v3_dss`      | PMOS 3.3 V w/ DSS extension      | 3.3 V          | `pfet_03v3_dss`       |                                          |
| `test_nfet_05v0`          | Intermediate HV NMOS            | 5.0 V          | `nfet_05v0`           |                                          |
| `test_nfet_06v0`          | HV NMOS                         | 6.0 V          | `nfet_06v0`           | General-purpose HV NMOS                  |
| `test_pfet_06v0`          | HV PMOS                         | 6.0 V          | `pfet_06v0`           |                                          |
| `test_nfet_06v0_dss`      | HV NMOS with DSS                | 6.0 V          | `nfet_06v0_dss`       | Extended drain                           |
| `test_pfet_06v0_dss`      | HV PMOS with DSS                | 6.0 V          | `pfet_06v0_dss`       |                                          |
| `test_nfet_06v0_nvt`      | Native-V<sub>TH</sub> NMOS      | 6.0 V          | `nfet_06v0_nvt`       | Threshold near 0 V                       |
| `test_nfet_10v0_asym`     | Asymmetric HV NMOS              | 10.0 V         | `nfet_10v0_asym`      | High-voltage output or IO path           |
| `test_pfet_10v0_asym`     | Asymmetric HV PMOS              | 10.0 V         | `pfet_10v0_asym`      | High-voltage output or IO path           |


- In case you are wondering, the following devices are **not** available in **gf180mcuD**:
| Schematic Label            | Device Type                     | Voltage Rating | SPICE Model Name      | Notes                                    |
|---------------------------|----------------------------------|----------------|-----------------------|------------------------------------------|
| *(not in test schematic)* | Thin-oxide NMOS (core)          | 1.8 V          | `nfet_01v8`           | Standard core NMOS                       |
| *(not in test schematic)* | Thin-oxide PMOS (core)          | 1.8 V          | `pfet_01v8`           | Standard core PMOS                       |
| *(not in test schematic)* | Thin-oxide NMOS, LVT            | 1.8 V          | `nfet_01v8_lvt`       | Low-V<sub>TH</sub> core NMOS             |
| *(not in test schematic)* | Thin-oxide NMOS, HVT            | 1.8 V          | `nfet_01v8_hvt`       | High-V<sub>TH</sub> NMOS (low leakage)   |
| *(not in test schematic)* | Thin-oxide PMOS, LVT            | 1.8 V          | `pfet_01v8_lvt`       | Low-V<sub>TH</sub> core PMOS             |
| *(not in test schematic)* | Thin-oxide PMOS, HVT            | 1.8 V          | `pfet_01v8_hvt`       | High-V<sub>TH</sub> PMOS                 |