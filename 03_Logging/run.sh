# Build jako predtim
sudo docker build -t 03_logging:latest .

# Pustime kontejner
sudo docker run -d -p 8080:80 03_logging:latest  

# 1 Pripojime se k bezicimu containeru
sudo docker exec -it HASH /bin/bash
# 2 Cteme logy primo z aplikace 
sudo docker logs --tail 10 --follow HASH
# 3 Namapujeme si venkovni adresar
sudo docker run -d -p 8080:80 -v ${PWD}/logs/1:/App/Logs 03_logging:latest  
sudo docker run -d -p 8081:80 -v ${PWD}/logs/2:/App/Logs 03_logging:latest  

# Smazeme kontejner
sudo docker rm -f HASH

# Pustime kontejner interaktivne
sudo docker run -it --rm -p 8080:80 03_logging:latest
