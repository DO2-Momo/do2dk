
ISO_DIR=./do2iso
WORK_DIR=/tmp/do2iso
BUILD_DIR=./dist

if [ ! -d $WORK_DIR ]; then
    mkdir $WORK_DIR
fi

mkarchiso -v -w $WORK_DIR -o $BUILD_DIR $ISO_DIR