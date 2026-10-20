#!/usr/bin/env bash
# Repository copy of the monitor used by hermes-news-ru-sync.
# The cron job executes ~/.hermes/scripts/hermes-news-ru-check.sh; this copy keeps
# the mandatory post-publish command ./hermes-news-ru-check.sh valid in this repo.
exec /home/magnum/.hermes/scripts/hermes-news-ru-check.sh "$@"
