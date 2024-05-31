#!/bin/bash -x

VENDOR=1
# Names (Source name can sometimes be the same as name)
NAME=
SOURCE_NAME=
AUTHOR=
# Version and commit (latest if using master)
VERSION=0.1.0
COMMIT=LATEST
# Repos
REPO=https://github.com/$AUTHOR/$SOURCE_NAME
RPM_REPO=https://github.com/ryanabx/cosmic-extras-rpm
# Paths to files
RPM_FILES=cosmic-extras-rpm/rpms/$NAME/*
SCRIPT_FILE=srpm.sh
SCRIPT_DIR=cosmic-extras-rpm/scripts/$SCRIPT_FILE

# Clone the RPM repo
git clone --recurse-submodules $RPM_REPO
# Get extra RPM files
cp $RPM_FILES .
# Get script file
cp $SCRIPT_DIR .
# Run script file
. $SCRIPT_FILE $NAME $SOURCE_NAME $VERSION $COMMIT $REPO $VENDOR