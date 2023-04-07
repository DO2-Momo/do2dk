ISO_DIR=./do2iso
WORK_DIR=./tmp
BUILD_DIR=./dist

# Create work directory
if [ ! -d $WORK_DIR ]; then
    mkdir $WORK_DIR
fi

# Build ISO image
mkarchiso -v -w $WORK_DIR -o $BUILD_DIR $ISO_DIR

# Clean work directory
rm -rf $WORK_DIR