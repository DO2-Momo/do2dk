cd ./yarp; cargo build -r; cd ..;

mkdir ./do2iso/airootfs/root/.yarp/

echo "Copying Installer configurations... "
cp -r ./yarp/packages ./do2iso/airootfs/root/.yarp/packages
cp -r ./yarp/root     ./do2iso/airootfs/root/.yarp/root

echo "Copying Installer executable... "
cp ./yarp/target/release/rs-yarp ./do2iso/airootfs/root/.yarp/rs-yarp
