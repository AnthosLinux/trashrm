#!/bin/bash

function main {
	while true; do
    sudo pacman -Syu
    sleep 2
	echo "Done"
	sleep 3

	sudo pacman -Rns $(pacman -Qtdq)
	sleep 2
	echo "Done"
	sleep 3

	sudo pacman -Sc
	sleep 2
	echo "Done"
	sleep 3

	trizen --clean
	sleep 2
	echo "Done"
	sleep 3

	sudo rm -rf /tmp/*
	sleep 2
	echo "Done"
	sleep 3

	sudo swapoff -a
	sudo swapon -a
	sleep 2
	echo "Done"
	sleep 3

	done
}

main
