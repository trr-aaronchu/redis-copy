FROM ruby:2.5.1
RUN bundle install
RUN rake install
