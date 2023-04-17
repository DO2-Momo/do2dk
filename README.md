# do2dk ( DO2 Development Kit )

> [Version française](./LISEZMOI.md)

Development kit for building DO2os installer images.

For a pre-built image of the DO2os iso, see the [do2iso latest release](https://github.com/DO2-Momo/do2iso/releases/latest)


<br/>

<br/>
<br/>

# Dependencies

> Arch Based or DO2os distribution is required

Make sure you install all package dependencies

```
pacman -Sy git
```

<br/>
<br/>

## Clone

Clone the development kit

```
git clone --recurse-submodules https://github.com/DO2-Momo/do2dk
```

Enter the `do2dk` directory

```sh
cd do2dk
```


```sh
pacman -Sy - < .deps
```

<br/>
<br/>


## Build

Compile the `do2iso` image

```sh
make iso
```

Once built, your `iso` is provided in `./dist` as `do2os-YYYY.MM.DD-x86_64.iso`. The name varies depending on the build date.

You can flash this iso to a usb flash drive with your application of choice.

<br/>
<br/>

## Flash


If the iso file is distributed to a windows system, you could use `rufus`, [see here](https://rufus.ie/en).



On linux, you can use `dd`, [more info here](https://linux.die.net/man/1/dd).



<br/>

We recommend using `dd` with this configuration:

(Replace with the correct date and correct disk)

```sh
dd if=./dist/do2os-YYYY.MM.DD-x86_64.iso of=/dev/sdX status=progress
```
