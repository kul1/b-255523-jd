FROM ruby:2.5.5-stretch 
# RUN mkdir /jinda

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1


COPY . /jinda
WORKDIR /jinda
# ENV RAILS_ENV production
ENV RAILS_ENV development 
RUN bundle install --deployment --without test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
