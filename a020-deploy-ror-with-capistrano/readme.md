# Demo of deploying a Ruby on Rails application with Capistrano

## Overview

This lab shows how to deploy a Ruby on Rails application with Capistrano.

The application being deployed is [gtrafimenkov/example-a020-ror-app-tracks](https://github.com/gtrafimenkov/example-a020-ror-app-tracks),
which is a fork of [TracksApp/tracks](https://github.com/TracksApp/tracks).

This repository contains infrastructure code for setting up a single Vagrant
virtual machine.  The virtual machine will contain:
- the database server (MariaDB)
- nginx for serving static assets
- the deployed application

To prepare the infrastructure, run:

```
vagrant up
./ap.sh playbooks/single-server.yml
```

To deploy the application:
- check out https://github.com/gtrafimenkov/example-a020-ror-app-tracks
- setup rvm, ruby, bundler
- `bundle install --without production`
- `bundle exec cap production deploy`

## Cleanup

`vagrant destroy --force`

## Consulting

If you need help with Prometheus or Grafana, or other DevOps work,
don't hesitate to contact gennady.trafimenkov@gmail.com.

## License

MIT
