# set -e
# Compile the assets
rm -f /jinda/tmp/pids/server.pid
# bundle exec rake assets:precompile
# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
