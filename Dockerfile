FROM rails
COPY . /SCPlant/
WORKDIR /SCPlant/
RUN rm -f Gemfile.lock
RUN bundle install
EXPOSE 3000/tcp
CMD ["rails", "server", "-b", "0.0.0.0"]

