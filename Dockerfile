FROM ollama/ollama:latest
WORKDIR /app
COPY ./Modelfile .
RUN ollama create sipr_copilot -f Modelfile
CMD [ "ollama","run sipr_copilot" ]