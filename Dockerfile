FROM azuresdk/azure-powershell-core:latest

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

RUN apt-get --assume-yes install apt-transport-https
RUN apt-get --assume-yes update
RUN apt-get --assume-yes install dotnet-sdk-2.1.105

ENTRYPOINT ["pwsh", "-c"]
CMD []
