# In docker-compose.yml

Replace the container name with the name of your of your choice, for example, "my-mysql"
Replace the port with the port of your choice, for example, "3306"
Replace the image name with the mage of your choice,
Replace the root password with the password you are using, for example, "root_password"
Replace the database name with the name of your database, for example, "my_database"

# In Makefile

make data - will be used to run the migration and seed command
composer update - will be used to run the composer update command
docker build - will be used to build the docker image
docker up - will be used to run the docker-compose up command
docker down - will be used to run the docker-compose down command

# For docker CLI/Commands. Visit this site

https://docs.docker.com/reference/cli/docker/
