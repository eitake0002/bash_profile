#!/bin/sh

alias bashedit-mysql='vim ~/bash_profile/mysql/mysql.bash_profile'

#-----------------------------------------
# Access settings
# Paste below variables in ~/.bash_profile
#-----------------------------------------
#export db_name=database
#export host=localhost
#export port=3306
#export user=root
#export pass=


#----------------------------------
# MySQL settings
#----------------------------------

# Check my.cnf places
alias my-conf='mysql --help | grep my.cnf'

# Check mysql version.
function my-version(){
  mysql -u root -D mysql -e "SELECT version()"
}

#----------------------------------
# Base command
#----------------------------------
function base-command(){
  mysql -h $host -P $port -u $user $db_name -e "$1"
}

#----------------------------------
# Connect to DB server
#---------------------------------- 
function my-connect(){
  mysql -h $host -P $port -u $user $db_name
}

#----------------------------------
# Database
#----------------------------------
function show-dbs(){
  base-command 'show databases'
}

#----------------------------------
# Table
#----------------------------------
function show-tables(){
  base-command 'show tables'
}

function desc-table(){
  base-command "desc $1"
}

function show-table-data(){
  base-command "SELECT * FROM $1"
}
