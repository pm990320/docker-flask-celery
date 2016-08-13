# docker-flask-celery
**Run a flask application and celery worker in the same Docker container**

## How to run this example
1. Clone the repository.
2. Ensure you have docker and docker-compose installed. If unsure, install 'Docker Toolbox'.
3. Make sure your docker-machine is running (if you are on Win or Mac)
4. Run the command docker-compose up --build

## How to use this example
This is purely an illustrative example, but you can fork it and use it as a template. The example shows how to properly configure supervisord, celery, flask and docker. Take inspiration from it.

The strategy used is to run the flask application, the celery worker and celerybeat worker as programs using supervisord. Pipe all their stdout to the docker container's stdout, et voila. Using docker-compose, we connect to an external redis container, but as long as you change the backend URLs in the celery configuration to whatever persistent backend you have, then the example should work as a standalone docker container.

## Contributing
If you would like to contribute something to this example, contact me at [patrickmenlove@hotmail.co.uk][e5205abd].

  [e5205abd]: mailto:patrickmenlove@hotmail.co.uk "patrickmenlove@hotmail.co.uk"
