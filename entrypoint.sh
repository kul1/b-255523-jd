#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid
# Compile the assets
# bundle exec rake assets:precompile
# Add admin user
rake jinda:seed
# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
