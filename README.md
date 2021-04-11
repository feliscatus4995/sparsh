# Sparsh 
A real touch of Virtual Togetherness.
<br>
Here is the installation guide to try this project on your localhost.
<br>
## Perform the following steps one by one ->
- Download this repo in your device
- Install [XAMPP](https://www.apachefriends.org/download.html)
- Now copy this downloaded repo to C:/xampp/htdocs/
- Create a database named sparsh in MySQL and import `sparsh.sql` file in that DB.
- Install [PostgreSQL](https://www.postgresqltutorial.com/install-postgresql/) and create a Database.
- Install [Redis (Windows 10) ](https://redislabs.com/blog/redis-on-windows-10/) (for windows 8.1 and prior versions visit [this](https://redislabs.com/blog/redis-on-windows-8-1-and-previous-versions/) )
- Install [Node.js](https://nodejs.org/it/)
- Install yarn `npm install --global yarn`
- Create an account on Numb [here](http://numb.viagenie.ca)
- Create an account on ngrok [here](https://ngrok.com/)
- Run this code `cp .env.template .env` to copy .env.template to .env
- Fill in your numb credentials in the `.env` file & Set `TURN_ENABLED=true`
- Fill in your ngrok authtoken in the `.env` file & Set `NGROK_ENABLED=true`
- `npm install` install the dependencies
- open cmd for directory chat/server and type `yarn install` to install dependencies
- do `yarn install` chat/web as well
- edit the .env file in server directory by replacing this `DATABASE_URL=postgresql://username:password@localhost:5432/db_name` by your username, password & db_name

## Now starting the applications 
- start redis server 
- start postgresql
- go to videocall directory open cmd and type `npm start`
- go to XAMPP control panel and start MySQL and Apache
- go to chat/server `yarn start`
- got chat/web `yarn start`

Now open 127.0.0.1/Sparsh/
Now you are ready to try this on your localhost.
