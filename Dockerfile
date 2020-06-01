FROM gleamlang/gleam:0.9.0-rc1 as build

FROM elixir:1.10.3

COPY --from=build /bin/gleam /bin
RUN gleam --version

# NOTE the WORKDIR should not be the users home dir as the will copy container cookie into host machine
WORKDIR /opt/app

RUN mix local.hex --force && mix local.rebar --force

COPY . .
RUN mix deps.get
