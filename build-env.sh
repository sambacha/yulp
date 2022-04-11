#!/bin/bash
yarn install --pure-lockfile
yarn run build
export NODE_ENV=production
npx parcel build -t browsser  browser/index.html
cp browser_config/now.json dist/now.json