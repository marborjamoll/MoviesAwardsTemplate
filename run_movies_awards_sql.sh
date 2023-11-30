# create the database
PGPASSWORD='your_password' psql -U 'postgres'  -c 'DROP DATABASE IF EXISTS movies_awards;'
PGPASSWORD='your_password' psql -U 'postgres'  -c 'CREATE DATABASE movies_awards'
PGPASSWORD='your_password' psql -U 'postgres' -d 'movies_awards' -f 'movies.sql'
