# Installation steps

The Docker image used in this 2025 Chipathon is pre-packaged Docker container provided by Harald Pretl's lab **IIC-OSIC-TOOLS**: https://github.com/iic-jku/iic-osic-tools

GUI-based tool setup:
1) Download Docker: https://www.docker.com/get-started/

  a) Enable *Use WSL 2 instead of Hyper-V (recommended)* as indicated in Kwantae Kim's tutorial: https://kwantaekim.github.io/2024/05/25/OSE-Docker/#in--windows

2) Search and pull Harald Pretl's container in Docker app: *iic-osic-tools* (it will take a couple of minutes).

3) Download and install Windows Subsystem for Linux (WSL).
   
a) Open WSL and run:
```
   wsl -l -v
```
4) In the Docker app, enable integration with Ubuntu.

5) Download and install VS Code: https://code.visualstudio.com/

6) Install Docker extension in VS Code
