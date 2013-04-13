#!/bin/sh

for path in less/*
do
	file=${path%.less}
	lessc $path css/${file##*/}.css --yui-compress
done

