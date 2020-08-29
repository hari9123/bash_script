#!/bin/bash

#This below are the messages for printing

#if [ ]
echo  "Executing script: $0"
echo  "Archiving User: $1"

#Lock the account

passwd -l $1

#creating archive of user

tar -cvf /archive/${1}.tar.gz /home/${1}
