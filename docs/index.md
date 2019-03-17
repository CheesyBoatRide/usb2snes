---
layout: default
title: USB2SNES
---

USB2SNES is way to communicate with the SNES.

# Contents
{:.no_toc}

* TOC
{:toc}

# Origin

## USB2SNES firmware

USB2SNES is a firmware for the SD2SNES cartridge written by Redguyy that allows to use the USB port on the SD2SNES to access various functionality of the SD2SNES.
Most notable are uploading ROM, read and write various memories of the console.

The issue with this approach, when writing application that use this technology only one application can have access to the SD2SNES.
So for example you cannot run an Item tracker for ALTTP randomizer at the same time than the fileviewer to upload a new ROM.

![Direct access](images/directaccess.png)

To avoid this issue, Redguyy wrote an intermediary application also called USB2SNES that other application use to talk to the SD2SNES.

So a basic usage look like that:

![Websocket access](images/wsaccess.png)

## Emulators, SNES Classic...

Since then an alternative implementation called [QUsb2Snes](https://skarsnik.github.io/QUsb2snes/) has added support for other backends including SNES Emulators or SNES Classic

For example Snes9x

![Lua connection](images/luaconnection.png)


# Supported platforms

Intermidiate software
* [USB2SNES](https://github.com/RedGuyyyy/sd2snes/releases) (Windows)
* [QUsb2Snes](https://skarsnik.github.io/QUsb2snes/) (Windows, MacOS, Linux)

Different choices of platforms that is supported

Platform | [USB2SNES](https://github.com/RedGuyyyy/sd2snes/releases) | [QUsb2Snes](https://skarsnik.github.io/QUsb2snes/)
---------|----------|----------
SD2SNES with the [USB2SNES](https://github.com/RedGuyyyy/sd2snes/releases) firmware|✔|✔
[Snes9x Multitroid](https://drive.google.com/open?id=1_ej-pwWtCAHYXIrvs5Hro16A1s9Hi3Jz) with Lua support|❌|✔
SNES Classic modded with [Hakchi2 CE](https://github.com/TeamShinkansen/hakchi2/releases)|❌|✔
RetroArch support with Snes9x and bsnes-mercury cores|❌|✔

# Applications

## Multitroid
Multitroid is a mod for Super Metroid that allows multiple players to complete the game cooperative, they can share energy, ammo, items, equipment, events and map across different platforms

See [Multitroid.com](http://www.multitroid.com/) for more information	

## Fileviewer
Included with [USB2SNES](https://github.com/RedGuyyyy/sd2snes/releases)

This application allows you access your SD2SNES files and perform some special operation, like starting a game, applying a patch.

## MemoryView
Included with [USB2SNES](https://github.com/RedGuyyyy/sd2snes/releases)

This application allow you to have a look at various memory of your SNES and overwrite value if you want.

## InputViewer

This is patched [NintendoSpy](https://github.com/jaburns/NintendoSpy) that use some memory value of your device to display the buttons your press. It has some limitation like not showing input during screen transition and such.