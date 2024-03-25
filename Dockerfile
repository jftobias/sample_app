FROM ruby:3.3.0

# Install required packages
RUN apt-get update -qq && apt-get install -qqy \
     git-core  \
     git \
     curl  \
     zlib1g-dev  \
     build-essential patch \
     libssl-dev \
     libreadline-dev \
     postgresql \
     libxml2-dev \
     libxslt1-dev \
     libcurl4-openssl-dev \
     libffi-dev \
     vim

# Install the proper bundler version
RUN gem install bundler:2.5.7

RUN mkdir /sample_app
RUN mkdir /sample_app/log

WORKDIR /sample_app
COPY Gemfile /sample_app/Gemfile
COPY Gemfile.lock /sample_app/Gemfile.lock

RUN bundle install

EXPOSE 3000

