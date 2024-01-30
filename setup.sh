curl https://raw.githubusercontent.com/iamvee/odb-to-vtk/python-files/multiprocess.py -o ~/.local/bin/odb2vtk_multiprocess.py
curl https://raw.githubusercontent.com/iamvee/odb-to-vtk/python-files/odb2vtk.py -o ~/.local/bin/odb2vtk.py


if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo "export PATH=$HOME/.local/bin:\$PATH" >> ~/.bashrc
    source ~/.bashrc
fi