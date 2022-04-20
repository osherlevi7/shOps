#!/bin/bash
# prosgreSQL DB
if [ "$#" -ne 2 ]; then
    echo "example usage ./setup_psql_db.sh <DB_NAME> <PASSWORD>"
    exit -1
fi


db_name=${1}
password=${2}

sudo -H apt update
sudo -H apt install postgresql postgresql-contrib
sudo -H apt install python-psycopg2

echo "Initializing postgres db ${db_name} with user postgres and password ${password}"
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password '${password}';"
sudo -u postgres createdb ${db_name}

sudo apt-get install libpq-dev
