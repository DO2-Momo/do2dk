
ISO_DIR=./do2iso
WORK_DIR=./tmp
BUILD_DIR=./dist

if [ ! -d $WORK_DIR ]; then
    mkdir $WORK_DIR
fi

mkarchiso -v -w $WORK_DIR -o $BUILD_DIR $ISO_DIR

rm -rf $WORK_DIR