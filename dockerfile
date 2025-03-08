FROM ghcr.io/astral-sh/uv:python3.10-alpine

ADD . /code

WORKDIR /code

RUN uv sync --frozen

COPY ./app /code/app

CMD ["uv", "run", "fastapi", "run", "app/main.py", "--port", "80"]