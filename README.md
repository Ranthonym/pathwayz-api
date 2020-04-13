#API data for Pathfinder App

##SETTING UP DATABASE:

-psql -U vagrant -d template1
CREATE ROLE member WITH LOGIN password 'member';
CREATE DATABASE final OWNER member;

##GETTING INTO DATABASE:

psql final \member
(it will ask you for the password which is member)
