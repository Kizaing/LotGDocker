## LotGDocker

Legend of the Green Dragon by Eric 'MightyE' Stevens and JT Traub was/is an open source web based MMORPG based on the old BBS Backdoor game Legend of the Red Dragon.
Unfortunately, development has ceased so the code base is either difficult or unsafe to run on modern systems because of its reliance on PHP5.

This project exists to make it easy and a lot safer to run on modern servers, via Docker.

Included in this repository are the Dockerfiles I used to create the images needed, as well as the docker-compose file to pull it all together. 
I also added in a pre-populated database which bypasses the install process, as well as the PHP files for the game itself pre-configured
to connect to the database. It's all ready to go once you spin up the container.

The repo itself is the Dockerfiles, on the releases page you'll find a zip that's preconfigured to get you up in seconds.

### Instructions

1. Install docker and docker-compose
2. Unzip the folder downloaded from the [releases page](https://github.com/Kizaing/LotgDocker/releases/download/1.0/DockerGD.zip)
3. Make any edits you may want in the docker-compose.yaml (Port, directories, etc)
4. In your terminal of choice cd to the folder where the docker-compose.yaml file is
5. Run 
````
docker-compose up -d
````
6. By default the port is 4040 so once it's done you should be able to just go to http://localhost:4040 to access the login
7. Go through the LotGD installation. When it gets to the database info section enter the following
````
Mysql Address: lotgd-db
Mysql Username: root
Mysql Password: lotgd
Mysql Database: lotgd
````

8. When you click test the connection information it will inform you that the database does not exist, simply click the button to create the database and it will make it for you
9. Create the admin account for yourself and you'll be able to login!
10. (Optional) Follow the instructions included to fix the Drinks and Riddles modules

### Notes

When editing the directory location of the PHP files in the docker-compose file you MUST make it the same for both the lotgd-web and lotgd-php images. Otherwise the PHP
server won't be able to see the files and nothing will work.

If you want to make any database changes the database image has port 3306 open, and you can access it with username root and password lotgd. You can connect with any MySQL 
GUI program, or however you like to connect to your databases.

I have not tested adding more modules, but it should work

This is my first ever Docker creation, if there are any ways you think I could add or improve let me know :D
