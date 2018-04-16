FROM ruby:2.5.1
ADD . /
RUN bundle install
RUN rake install
