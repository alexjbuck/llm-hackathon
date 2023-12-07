FROM ollama/ollama:latest
WORKDIR /app
COPY ./Modelfile .
RUN ollama serve & sleep 2 && ollama create jarvis -f Modelfile
COPY startup.sh .
RUN chmod +x startup.sh
ENTRYPOINT [ "./startup.sh" ]