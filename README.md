# do2dk ( DO2 Development Kit )

Development kit for building DO2os installer images


# Instructions


> ALL THE FOLLOWING COMMANDS REQUIRE ROOT ACCESS

## Dependencies

You need an Archlinux or DO2os distribution as a development environement

Here is how you can install dependencies

```
pacman -Sy - < .deps
```

<br/>

## Clone

Clone the development kit

```
git clone https://github.com/DO2-Momo/do2dk
```

Enter the `do2dk` directory

```sh
cd do2dk
```

Run the setup script

```
source ./scripts/setup.sh
```

<br/>


## Building

Compile the `yarp` installer

```sh
make installer
```

Compile the `do2iso` image

```sh
make iso
```

Once built, your `iso` is provided in `./dist` as `do2os-YYYY.MM.DD-x86_64.iso`. The name varies depending on the build date.

You can flash this iso to a usb flash drive with your application of choice.

<br/>

## Flashing


<br/>

If the iso file is distributed to a windows system, you could use `rufus`, [see here](https://rufus.ie/en).



On linux, you can use `dd`, [more info here](https://linux.die.net/man/1/dd).



<br/>

We recommend using `dd` with this configuration:

(Replace with the correct date and correct disk)

```sh
dd if=./dist/do2os-YYYY.MM.DD-x86_64.iso of=/dev/sdX status=progress
```