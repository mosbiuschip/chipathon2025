# CAD Tool Flow


## Analog Full Custom Design CAD Tool Flow

The analog design flow is depicted in the following diagram (source: [EE628](https://github.com/bmurmann/EE628/))


![Tool Flow](https://raw.githubusercontent.com/bmurmann/EE628/main/3_Tools/img/flow.png)


## Associated File Types

<p align="center">
   <img src="./img/Tool_flow.png" width="600" />
</p>  

- The **schematics** are drawn with `xschem` and are saved as `.sch` schematics and `.sym` symbols. 

- Netlisting in `xschem` creates a **spice netlist** as a `.spice` file. 

- Simulations are run using `ngspice` that takes in the `.spice` file and saves the **simulation results** in a `.raw` file. 

- The simulation results can be plotted with a waveform viewer like `gaw` or post processed using Python or Jupyter Notebooks including Google Collab. 

- Layouts are drawn in `klayout`. The layout geometries are saved in a `.gds` file. 

- Design Rule Checking (**DRC**) is handled by `klayout` and makes sure that the layout does not violate any design rules.  

- Layout-vs-Schematic (**LVS**) is handled by `klayout` and extracts an electronic schematic from the geometries drawn on the layout and compares that schematic to the original `.spice` schematic drawn by the designer. 

- The layout adds parasitics that can be extracted by `magic` which creates a `.spice` netlist with the parasitics added. This is referred to as Parasitic Extraction (**PEX**). The PEX schematic can then be simulated with `ngspice` to verify the impact of the parasitics on the circuit performance. 

## Process Design Kit (PDK)

The PDK contains all the information about the semiconductor process for which the chip is being designed. The PDK provides the following information.

- **Device Models**: these models are used by the circuit simulator to simulate the behavior of the electronic devices like MOS transistors, diodes, parasitic bipolars, etc. in the circuit. 

- **Layout Design Rules**: the DRC rule file provides the DRC checker with the rules it needs to check that the layout can be correclty manufactured and with high yield. 

- **PEX Models:** the parasitic extraction tool uses this process information to compute parasitic capacitors and resistors of the wiring etc. 




