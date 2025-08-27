# My First Docker Repo 🐋
<h3>Dockerizing the node app using mongo and mongo-express gui for user to create and to gets all users the data.</h3>
<h4>Conecting the node app with docker</h4>



<h3>📂 Project Structure</h3>

```docker_dev/

│──public

│──screenshots

│── Dockerfile               # Node.js app build instructions

│── docker-compose.yml      # Multi-container setup

│── package.json                

│── server.js       # Your Node.js application code

│── README.md
```




<h3>🐳 Services..</h3>

<h4>1. MongoDB</h4>

Runs the official MongoDB image.

Persists data using a named volume (mongo_data).


<h4>2. Mongo Express</h4>

Simple web UI for managing MongoDB.

Accessible at http://localhost:8081

<img src="screenshots/mongo-express.png"/>



<h4>3. Node App</h4>

Your custom Node.js application.

Connects to MongoDB using credentials set in environment variables.

Runs on http://localhost:5050

<img src="screenshots/Nodejsapp.png"/>



<h3>⚙️ Setup & Usage</h3>

1. Build & Start Containers

    docker-compose up -d --build

    <img src="screenshots/Build&startcontainer.png"/>

2. Stop Containers

    docker-compose down

    <img src="screenshots/Dockercomposedown.png"/>

3. Remove Containers + Volumes (fresh start)

    docker-compose down -v

    <img src="screenshots/dockercomposedown -v.png"/>



<h3>🔑 Environment Variables</h3>

Defined in docker-compose.yml:

    MONGO_INITDB_ROOT_USERNAME: admin
    MONGO_INITDB_ROOT_PASSWORD: qwerty
    ME_CONFIG_MONGODB_ADMINUSERNAME: admin
    ME_CONFIG_MONGODB_ADMINPASSWORD: qwerty
    ME_CONFIG_MONGODB_URL: mongodb://admin:qwerty@mongo:27017/
    MONGO_DB_USERNAME: admin
    MONGO_DB_PASSWORD: qwerty


<h3>📦 Volumes</h3>

volumes:
  mongo_data:



mongo_data persists MongoDB data across container restarts.

Data will remain even if containers are stopped or removed (unless you run docker-compose down -v).



<h3>🌍 Access</h3>

```
Node App → http://localhost:5050

Mongo Express → http://localhost:8081

MongoDB → localhost:27017
```


<h2>📝 Notes</h2>

Pushing your image to DockerHub is only needed if you change your Node app (Dockerfile or source code).

Volumes (mongo_data) are host-managed and not part of the image.

This project is for learning Docker basics → intermediate (images, containers, volumes, networks, docker-compose).