FROM python:3.11-slim

RUN pip install --no-cache-dir \
    mkdocs \
    mkdocs-material \
    mkdocs-gen-nav-plugin

WORKDIR /docs

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
