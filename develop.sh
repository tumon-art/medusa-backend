#!/bin/bash

#Run migrations to ensure the database is updated
medusa migrations run

#Run seeds for database population
#medusa seed -f ./data/seed.json

#Start development environment
medusa $1
