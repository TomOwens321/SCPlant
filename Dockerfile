FROM rails
COPY . /SCPlant/
WORKDIR /SCPlant/
RUN bundle install

