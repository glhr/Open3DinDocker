FROM nvidia/cudagl:11.3.0-devel
RUN apt update && apt install -y sudo x11-apps mesa-utils git python3 python3-pip
RUN mkdir -p /home/$USER/ # This is only required inside VS Code

RUN pip3 install --upgrade pip
RUN pip3 install open3d