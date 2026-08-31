FROM ruby:3.4.9

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev postgresql-client

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

RUN SECRET_KEY_BASE_DUMMY=1 bin/rails assets:precompile

CMD ["bash", "-c", "bin/rails db:migrate && exec bin/rails server -b 0.0.0.0"]
