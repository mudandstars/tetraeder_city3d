#!/bin/bash

cd /home/$USER/tetraeder_city3d/Release

export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/qt@5/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/qt@5/include"
export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/qt@5/lib/pkgconfig"
export Qt5_DIR=/home/linuxbrew/.linuxbrew/opt/qt@5/lib/cmake/Qt5

cmake -DCMAKE_BUILD_TYPE=Release .. -DCGAL_DIR="/home/linuxbrew/.linuxbrew/Cellar/cgal/5.6/lib/cmake/CGAL/"

make

cp /home/$USER/tetraeder_city3d/Release/bin/tetraeder_city3d /home/$USER/tetraeder.solar/sk_trunk/viewer/spkweb_v06/city3d/bin/city3d
