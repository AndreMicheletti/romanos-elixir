FROM elixir:1.10

WORKDIR /app

COPY . .

ENV MIX_ENV=prod

RUN rm -Rf _build
RUN mix local.hex --force
RUN mix deps.get
RUN mix release

CMD ["mix", "test"]
