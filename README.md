# app-repo
Step 1:
        app-repo --make directory
        clone directory
Directory Structure :
        index.html
        Dockerfile
        .gihub/workflows/cicd.yaml

Step 2:
DOCKER BUILD (Check manually)

docker build -t shobanavijayan/app:test .
docker run -d -p 8080:80 shobanavijayan/app:test
http://localhost:8080/

Step 3:
GITHUB ACTIONS

git init
git add .
git commit -m "Initial commit for XOps microchallenge app"
git branch -M main
git push origin main
