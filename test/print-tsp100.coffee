
fs = require 'fs'
lpd = require './src/lpd'

host = '192.168.0.199'
controlFile = fs.readFileSync 'sample-control-tsp100'
dataFile = fs.readFileSync 'sample-data-tsp100'

lpd.client.sendJob host, controlFile, dataFile, {debug: true}, (e) ->
  console.log "Done."

