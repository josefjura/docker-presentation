FROM mcr.microsoft.com/dotnet/aspnet
WORKDIR /App

# Zkopirujeme build
COPY ./publish .

ENTRYPOINT ["dotnet", "SampleWeb.dll"]