FROM python:3.5-onbuild

RUN apt-get update && apt-get install -y --no-install-recommends graphviz \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8888

CMD ["./notebook.sh"]
