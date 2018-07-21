#!/bin/bash

set -eux

now --dotenv .env.production
domain=$(now ls | grep stateless.ly | awk '{ print $2 }')
now alias $domain www.stateless.ly
