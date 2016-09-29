#!/bin/sh

alias bashedit-mysql='vim ~/bash_profile/mysql/mysql.bash_profile'

#-----------------
# Access settings
#-----------------

export db_name=nenga-eto_development
export host=localhost
export port=3306
export user=root
export pass=''

#----------------
# MySQL settings
#----------------
function mysql-version(){
  mysql -u root -D mysql -e "SELECT version()"
}

#----------------
# Database
#----------------
alias show-dbs="mysql -u root -e 'show databases;'"

#----------------
# Table
#----------------

function base-command(){
  mysql -h $host -P $port -u $user $db_name -e "$1"
}

function show-tables(){
  base-command 'show tables'
}

function desc-table(){
  base-command "desc $1"
}

function show-table-data(){
  base-command "SELECT * FROM $1"
}
