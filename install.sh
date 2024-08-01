#!/usr/bin/env bash
set -euo pipefail

echo "Installing Kind"
kind/deploy.sh
echo "Waiting for stabalization"
sleep 5

echo "Installing Ingress"
ingress/deploy.sh
echo "Waiting for stabalization"
sleep 5

echo "Installing Monitoring"
monitoring/deploy.sh
echo "Waiting for stabalization"
sleep 5

echo "Installing Postgres"
postgres/deploy.sh
echo "Waiting for stabalization"
sleep 5

