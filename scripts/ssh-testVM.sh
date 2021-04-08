ssh -i ~/.ssh/TerraformPair.pem ubuntu@18.134.198.195 << EOF 

git clone https://github.com/SonnyRLM/CNE-Project-2

git checkout Dev

cd CNE-Project-2

docker-compose up -d --build

docker exec backend bash -c "pytest tests/ --cov application" >> backend_test.txt
docker exec frontend bash -c "pytest tests/ --cov application" >> frontend_test.txt

docker-compose down
