# do2dk (kit de développement DO2)

Kit de développement pour la création d'images d'installation DO2os.

Pour une image pré-construite de l'iso DO2os, consultez la [dernière version de do2io](https://github.com/DO2-Momo/do2iso/releases/latest)


<br/>

<br/>
<br/>

# Dépendances

> Une distribution basée sur Arch ou DO2os est requise

Assurez-vous d'installer toutes les dépendances de package

```
pacman -Sy - < .deps
```

<br/>
<br/>

## Cloner

Cloner le kit de développement

```
git clone --recurse-submodules https://github.com/DO2-Momo/do2dk
```

Entrer dans le do2dk répertoire

```sh
cd do2dk
```

<br/>
<br/>


## Build

Compiler l'image `do2iso`

```sh
make iso
```

Une fois construit, votre `iso` est fourni au `./dist` format `do2os-YYYY.MM.DD-x86_64.iso.` Le nom varie en fonction de la date de construction.
Vous pouvez flasher cet iso sur une clé USB avec l'application de votre choix.
<br/>
<br/>

## Éclair


Si le fichier iso est distribué sur un système Windows, vous pouvez utiliser `rufus`, [voir ici](https://rufus.ie/en).



Sous linux, vous pouvez utiliser `dd`, [plus d'infos ici](https://linux.die.net/man/1/dd).



<br/>

Nous recommandons d'utiliser `dd` avec cette configuration :

(Remplacer par la bonne date et le bon disque)

```sh
dd if=./dist/do2os-YYYY.MM.DD-x86_64.iso of=/dev/sdX status=progress
```
