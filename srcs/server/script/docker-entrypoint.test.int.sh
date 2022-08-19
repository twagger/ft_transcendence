#!/bin/ash

# Install dependencies if overried by bind volume
npm i

# push prisma schema into database
npx prisma migrate dev

# This makes sure the container doesn't exist so that we can run
# docker exec commands to test our code
tail -f /dev/null
