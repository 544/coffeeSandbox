{exec} = require "child_process"

REPORTER = "spec"

task "test", "run tests", ->
  exec "NODE_ENV=test
    mocha
    --compilers coffee:coffee-script/register
    --reporter #{REPORTER}
    --require coffee-script
    --colors
  ", (err, output) ->
    throw err if err
    console.log output
