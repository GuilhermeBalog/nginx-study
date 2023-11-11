image_tag="my-nginx-image"
container_name="my-nginx-container"

# Removes running container
docker stop $container_name
docker rm $container_name

# builds the new image
docker build -t $image_tag .

# starts a new container
docker run --name $container_name -p 80:80 -d $image_tag
