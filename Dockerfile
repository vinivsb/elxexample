FROM elixir:latest
MAINTAINER vinicius.vsb@gmail.com

ENV DEBIAN_FRONTEND=noninteractive

RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install Phoenix
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Install NodeJs and NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

ADD . /app
WORKDIR /app/discuss

RUN mix local.hex --force
