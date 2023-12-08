FROM ollama/ollama:latest
WORKDIR /app
COPY ./Modelfile .
RUN ollama serve & sleep 2 && ollama create jarvis -f Modelfile
ENTRYPOINT [ "ollama" ]
CMD [ "serve" ]