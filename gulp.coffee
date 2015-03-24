#
# gulp任務配置
#

gulp = require 'gulp'
webpack = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'

config = require './config'

gulp.task 'default', ['dev']

gulp.task 'dev', (done) ->
  webpackConfig = require './webpack_development'
  compiler = webpack webpackConfig
  server = new WebpackDevServer compiler,
    hot: true
  server.listen config.port, done

gulp.task 'build', (done) ->
  webpackConfig = require './webpack_production'
  compiler = webpack webpackConfig
  compiler.run done
