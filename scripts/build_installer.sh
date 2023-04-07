ISO_PATH=./do2iso

INSTALLER_SRC=./yarp
INSTALLER_DEST=$ISO_PATH/airootfs/root/.yarp

# Build Installer
cd $INSTALLER_SRC; cargo build -r; cd ..;

# Clean previous installer destination directory 
if [ -d $INSTALLER_DEST ]; then
    rm -rf $INSTALLER_DEST
fi

# Create destination directiory
mkdir $INSTALLER_DEST

echo "Copying Installer configurations... "
cp -r $INSTALLER_SRC/packages $INSTALLER_DEST/packages
cp -r $INSTALLER_SRC/root     $INSTALLER_DEST/root

echo "Copying Installer executable... "
cp $INSTALLER_SRC/target/release/rs-yarp $INSTALLER_DEST/rs-yarp
