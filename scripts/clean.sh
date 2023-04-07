# Installer related

# Remove build directory in source module
rm -rf ./yarp/target

# Remove build directory in destination
rm -rf ./do2iso/airootfs/root/.yarp

# ISO Related

# Remove working directory
rm -rf ./tmp

# Remove distributable directory
rm -rf ./dist/