# Internal Instructions

## Build
### Dependencies
I recommend to install the following dependencies using brew (brew.sh):
- qt@5.6
- opencv@4.10
- cgal@5.6

### Build Flags
To correctly point to the installed dependencies, check where they are located and set the flags correctly:
export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/qt@5/lib"
export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/qt@5/include"
export PKG_CONFIG_PATH="/home/linuxbrew/.linuxbrew/opt/qt@5/lib/pkgconfig"
export Qt5_DIR=/home/linuxbrew/.linuxbrew/opt/qt@5/lib/cmake/Qt5

### Perform Build
- navigate the the Release dir within this repo
- cmake -DCMAKE_BUILD_TYPE=Release -DCGAL_DIR="/home/linuxbrew/.linuxbrew/Cellar/cgal/5.6/lib/cmake/CGAL/" -DOpenCV_DIR="/home/linuxbrew/.linuxbrew/opt/opencv/lib/cmake/opencv4" ..
make
