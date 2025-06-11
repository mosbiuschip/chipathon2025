# gf180mcu pcell patch

When you open the Docker image terminal, type the following command:
  ```
  klayout -e
  ```
<p align="center">
   <img src="./img/klayout_command.png" width="600" />
</p>  

Klayout GUI pops up as indicated in the next image. 
<p align="center">
   <img src="./img/klayout_ihp.png" width="600" />
</p>  

It is important to mention that there are two red rectangles highlighting that klayout loaded ihp layer properties file correctly. To change the layer properties file to gf180mcu PDK, open setup_pdk.sh and do the following changes.
<p align="center">
   <img src="./img/klayout_path.png" width="600" />
</p>  

Save the file and source it:
  ```
    source setup_pdk.sh
  ```

Open again klayout.

<p align="center">
   <img src="./img/klayout_gf_incomplete.png" width="600" />
</p>  

It is possible to observe that there is only one gf180mcu label, compared with the first time klayout was opened (ihp configuration). This indicates that gf1180 pcells were not loaded correctly, as illustrated in the next image:

<p align="center">
   <img src="./img/klayout_no_pcells.png" width="600" />
</p>  

