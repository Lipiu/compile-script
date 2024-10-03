#!/bin/bash

#Compile .c files
for file in *.c; do
    if [ -f "$file" ]; then
        exe_name=$(basename "$file" .c)
        gcc -g "$file" -o "$exe_name"
        if [ $? -eq 0 ]; then
            echo "Compiled $file to $exe_name successfully!"
        else
            echo "Failed to compile $file"
            rm -f "$exe_name"
        fi 
    fi 
done

#Compile .cpp files
for file in *.cpp; do 
    if [ -f "$file" ]; then
        exe_name=$(basename "$file" .cpp)
        g++ -g "$file" -o "$exe_name"
        if [ $? -eq 0 ]; then
            echo "Compiled $file to $exe_name successfully!"
        else
            echo "Failed to compile $file"
            rm -f "$exe_name"
        fi
    fi
done

