# PathWayz

A full stack React app that evaluates user personalities and provides career guidance in terms of job options, post-secondary programs, mood monitor using ParallelDots API and mentor support via live chat. Built using React on the front-end, and Node, Express and PostgreSQL on the back-end. Live chat was built using Socket.io

## PathWayz Client

[PathWayz Client](https://github.com/Ranthonym/pathwayz)

## Dependencies

- dotenv v8.2.0
- node v8.9.4
- cors v2.8.5
- express v4.17.1
- pg v8.0.2
- socket.io v2.3.0
- nodemon v2.0.3

## Screenshots

!["Screenshot of user dashboard"](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20user%20dashboard.png)
!["Screenshot of career assessment start screen](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20career%20assessment%20start%20screen.png)
!["Screenshot of career assessment result showing careers"](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20career%20assessment%20result%20showing%20careers.png)
!["Screenshot of career assessment result showing a program for a specific career"](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20programs%20offered%20for%20a%20specific%20job.png)
!["Screenshot of live chat feature"](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20live%20chat%20with%20career%20advisor.png)
!["Screenshot of career search](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20career%20search.png)
!["Screenshot of additinal guidance resources](https://github.com/Ranthonym/pathwayz/blob/readme/public/images/Screenshot%20of%20additional%20guidance%20resources.png)

## Setup

Install dependencies with `npm install`.

#API data for PathWayz App

Refer to db folder

## SETTING UP DATABASE:

- psql postgres
- CREATE ROLE member WITH LOGIN password 'member';
- CREATE DATABASE final OWNER member;
- ALTER USER member WITH Superuser createrole createdb replication;

## CONNECTING TO DATABASE:

- psql --host=localhost --dbname=final --username=member

## Running API Server with Nodemon

```sh
npx nodemon
```
