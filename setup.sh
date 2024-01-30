#!/bin/bash

if [ ! -d "$HOME/.local/bin" ]; then
    mkdir -p $HOME/.local/bin
fi

if [ ! -f "$HOME/.local/bin/odb2vtk.py" ]; then
    curl https://raw.githubusercontent.com/iamvee/odb-to-vtk/python-files/odb2vtk.py -o ~/.local/bin/odb2vtk.py
fi

if [ ! -f "$HOME/.local/bin/odb2vtk_multiprocess.py" ]; then
    curl https://raw.githubusercontent.com/iamvee/odb-to-vtk/python-files/multiprocess.py -o ~/.local/bin/odb2vtk_multiprocess.py
fi

chmod +x ~/.local/bin/odb2vtk.py
chmod +x ~/.local/bin/odb2vtk_multiprocess.py

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "export PATH=$HOME/.local/bin:\$PATH" >> ~/.bashrc
    source ~/.bashrc
fi