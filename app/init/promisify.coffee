#
# Promisify
#

Promise = require 'bluebird'

Promise.promisifyAll require 'superagent'
