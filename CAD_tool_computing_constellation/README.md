# CAD Tool Computing Constellation

## Overview
<p align="center">
   <img src="./img/Computer_Tools_Setup.png" width="600" />
</p>  

We run the open-source tools in a **docker container** that is based on the docker image 'hpretl/icc-osic-tools' downloaded from the internet onto your Windows or MacOS host machine. In the docker container a linux machine runs the distribution Ubuntu. The open-source design tools (xschem, ngspice, klayout, ...) run on that linux machine. 

The **display** of the container is accessed through 'VNC' by running VNC viewer on your host machine. It can also be accessed from a browser.

The container has its own **file system** with the design tools and the technology PDK. On the docker container you save your design files in `/foss/designs`, however those files disappear when you shut down the linux machine; this folder is mapped to a folder on your Windows or MacOS host for permanent storage.

The design files are further stored in **repositories** on GitHub so you can collaborate in a team. The GitHub Desktop app keeps the files on the host machine and the GitHub repository in sync. 

> NOTE: This is just one possible constellation and there are many other ways to run the open-source tools. However, this is a relatively straightforward setup for designers who are new to linux and CAD tool configuration, since the docker container has everything pre installed. 

## Underlying Concepts

We strongly recommend designers to familiarize themselves with the basics of the following computing topics:

- Linux command line instructions
- Basic understanding of the linux file system organization
- Git and GitHub repositories 