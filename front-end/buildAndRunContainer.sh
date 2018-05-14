imageName="node"
containerName="hot-pot-flashcards-container"

echo $1
docker build -t $imageName -f $1 .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker run -d -p 3000:3000 --name $containerName $imageName