#!/bin/bash

kubectl create secret generic redis-passwd --from-literal=passwd=${RANDOM}
