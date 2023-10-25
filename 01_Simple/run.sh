# Udelame publish
cd _SampleWeb && sudo dotnet publish -c Release -o ../publish && cd ..

# Pustime primo publishnutou aplikaci
cd publish && dotnet SampleWeb.dll && cd ..

# Build image z vypublikovane aplikace
sudo docker build -t 01_simple:latest .

# Pustime a bezi
sudo docker run -it -p 8080:80 --rm 01_simple:latest 
