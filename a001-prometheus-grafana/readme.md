# Demo Prometheus + Grafana

## Overview

This lab shows a basic demo of running Prometheus for collecting
metrics and Grafana for displaying them.

- two virtual machines (`app01` and `mon01`) are started using Vagrant
- Prometheus and Grafana are run on mon01
- Prometheus node exporters are run on app01 and mon01

## Prerequisites

Installed on your development machine:
- Ansible
- Vagrant

## How to deploy

- `vagrant up`
- `./ap.sh playbooks/monitoring.yml -D`
- `./ap.sh playbooks/collectors.yml -D`
- open http://10.116.101.12:3000 and use `admin/admin123` credentials to log in
- go to [Node Exporter Full](http://10.116.101.12:3000/d/rYdddlPWk/node-exporter-full) dashboard

## Cleanup

`vagrant destroy --force`

## Limitations

If you decide to use this code in a project of any significance, don't forget:
- setup backups for Prometheus and Grafana
- limit access to Grafana and Prometheus node exporters from outside world

## Consulting

If you need help with Prometheus or Grafana, or other DevOps work,
don't hesitate to contact gennady.trafimenkov@gmail.com.

## License

MIT
