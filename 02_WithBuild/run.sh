# Build a publish v jednom
sudo docker build -t 02_withbuild:latest .

# Pustime misto interactive jako deamona
sudo docker run -d -p 8080:80 02_withbuild:latest 

# Muzeme pustit vetsi mnozstvi najednou
sudo docker run -d -p 8081:80 02_withbuild:latest
sudo docker run -d -p 8083:80 02_withbuild:latest