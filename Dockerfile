FROM ruby:3
ENV LANG C.UTF-8

WORKDIR /app

RUN gem install -N rails bundler
RUN rails new .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
