# tidb-cdc-kafka-nodejs-test
to run:
docker compose up -d

app is under localhost:3000


user: default_user
password: some_password

api routes /api/register   /api/login

explained:
compose raises 4 tidb containers - pd(manager), tikv(storage layer), tidb(the mysql server) and tiCDC  which is handling interception of db changes using kafka
+ 2 kafka containers (kafka+zookeeper)
+ 2 helper container - helper cdc- which creates changefeed to inform cdc to intercept(no cdc cli in ticdc container), and mysql container for data checking.

scripts: init-db.sql inits 2 tables- one for users, one for user_tokens to save them
tokens are sended via headers, but no real auth was managed to preserve session with jwt, as it needs ajax or more complex FE than simple HTML (to deliver header for auth)
  but as said, the jwToken is indeed in header in the backend script.

kafka is using logs4js and is logging it straight to backend console, for us to see the broker is really working and parsing the user_id etc..

can see the jpg for verification. 
