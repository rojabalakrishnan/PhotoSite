FROM ruby:2.7.0-alpine
# This installs
# * nodejs
# * sqlite
# * yarn
# * Rails
# * Gems in the Gemfile

RUN apk add --update --no-cache bash build-base nodejs sqlite-dev tzdata postgresql-dev yarn

RUN gem install bundler:2.1.4

WORKDIR /usr/src/app

COPY ../package.json yarn.lock ./
RUN yarn install --check-files

COPY Gemfile* ./
RUN bundle install

COPY .. .

ENV PATH=./bin:$PATH
EXPOSE 3000

CMD rails server -b 0.0.0.0 --port 3000