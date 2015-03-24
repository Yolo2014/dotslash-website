#
# 全局化
#

global.React = require 'react'
global.Router = require 'react-router'
global.Reflux = require 'reflux'
global._ = require 'underscore'
global.classNames = require 'classnames'
# global.$ = global.jQuery = require 'jquery'

global.getBody = (res) ->
  return throw res.error if res.error
  res.body
