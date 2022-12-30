FROM ruby:3
ENV LANG C.UTF-8

WORKDIR /app

# RUN gem install -N rails bundler
# RUN rails new .

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle -j4

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
