#!/bin/bash
#
# Installation script
# -------------------
#


# Get source directory
source _get_source_dir.sh


# Check for previous installation
CONFIG_FILE=$SOURCE/config/.env
if [ -f $CONFIG_FILE ]; then
    if [ ! $1 == "--from-npm" ]; then
        echo "Error: Config file '${CONFIG_FILE}' already exists, exitting."
    fi
    exit 0
fi


echo "  __  __ ____  ____    ____  _     _                           _ "
echo " |  \/  / ___||  _ \  / ___|| |__ (_)_ __  _   _  __ _ _ __ __| |"
echo " | |\/| \___ \| | | | \___ \| '_ \| | '_ \| | | |/ _\` | '__/ _\` |"
echo " | |  | |___) | |_| |  ___) | | | | | |_) | |_| | (_| | | | (_| |"
echo " |_|  |_|____/|____/  |____/|_| |_|_| .__/ \__, |\__,_|_|  \__,_|"
echo "                                    |_|    |___/                 "
echo ""


# Basic variables
HOST=$(cat /etc/hostname)


# Read user input data
echo "What environment do you wish to use?"
PS3="Please enter your choice: "
options=("Development" "Test" "Production" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Development")
            ENV="development"
            break
            ;;
        "Test")
            ENV="test"
            break
            ;;
        "Production")
            ENV="production"
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option '$REPLY'";;
    esac
done

read -p "Port (default: 4242): " PORT
PORT=${PORT:-4242}
read -p "MySQL host (default: localhost): " DB_HOST
DB_HOST=${DB_HOST:-localhost}
read -p "MySQL username (default: root): " DB_USERNAME
DB_USERNAME=${DB_USERNAME:-root}
read -p "MySQL password (default: aaa): " DB_PASSWORD
DB_PASSWORD=${DB_PASSWORD:-aaa}
read -p "MySQL database name (default: test): " DB_DATABASE
DB_DATABASE=${DB_DATABASE:-test}

while true; do
    read -p "Do you want to import data from repository to DB? [Y/n] " yn
    case $yn in
        [Yy]* ) DB_IMPORT=1; break;;
        [Nn]* ) DB_IMPORT=0; break;;
        * ) echo "Please answer yes or no.";;
    esac
done


# Remember install input values
echo " → Saving config file..."
touch $CONFIG_FILE
echo "ENV=${ENV}" >> $CONFIG_FILE
echo "HOST=${HOST}" >> $CONFIG_FILE
echo "PORT=${PORT}" >> $CONFIG_FILE
echo "DB_DIALECT=mysql" >> $CONFIG_FILE
echo "DB_HOST=${DB_HOST}" >> $CONFIG_FILE
echo "DB_USERNAME=${DB_USERNAME}" >> $CONFIG_FILE
echo "DB_PASSWORD=${DB_PASSWORD}" >> $CONFIG_FILE
echo "DB_DATABASE=${DB_DATABASE}" >> $CONFIG_FILE


# Other directories
DB_DIR="$SOURCE/db/mysql/install"
TEMP_DIR="$SOURCE/temp"


# Directories
echo " → Preparing temporary directories..."
if [ $DB_IMPORT == 1 ]; then
    mkdir -p $TEMP_DIR
fi


# MySQL data files
if [ $DB_IMPORT == 1 ]; then
    echo " → Preparing database import files..."
    MYSQL_FILES="$DB_DIR/structure.sql $DB_DIR/data.sql"
    for DBF in $MYSQL_FILES; do
        sed -e "s,__DOMAIN__,$DOMAIN,g" \
            $DBF > $TEMP_DIR/$(basename $DBF)
    done

    # Insert MySQL data
    echo " → Importing database files..."
    mysql -u $DB_USERNAME -p$DB_PASSWORD $DB_DATABASE < $TEMP_DIR/structure.sql
    mysql -u $DB_USERNAME -p$DB_PASSWORD $DB_DATABASE < $TEMP_DIR/data.sql
fi


# Clean temporary data
echo " → Cleaning temporary files..."
rm -rf $TEMP_DIR


# Finish
echo "                                                      "
echo "Installation complete! Now you can start service with:"
echo "npm start"
