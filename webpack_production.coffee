#
# webpack配置
#

webpack = require 'webpack'
HtmlWebpackPlugin = require 'html-webpack-plugin'

config = require './config'

process.env.NODE_ENV = 'production'

module.exports =
  entry: [
    './app/router.cjsx'
  ]
  output:
    path: __dirname + '/build'
    filename: '[hash].js'
  resolve:
    root: [
      __dirname + '/app'
      __dirname + '/bower_components'
      __dirname + '/node_modules'
      __dirname
    ]
    extensions: ['', '.js', '.cjsx', '.coffee']
  module:
    loaders: [
      test: /\.coffee$/
      loader: 'coffee'
    ,
      test: /\.cjsx$/
      loader: 'coffee!cjsx'
    ,
      test: /\.css$/
      loader: 'style!css'
    ,
      test: /\.(jpe?g|png|gif|svg)$/i
      loader: 'file!image'
    ,
      test: /\.(ttf|eot|svg|woff|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/
      loader: "file"
    ,
      test: /\.styl$/
      loader: 'style!css!stylus'
    ]
  plugins: [
    new webpack.NoErrorsPlugin
    new webpack.ResolverPlugin(
      new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin "package.json", ["main"]
    )
    new webpack.ResolverPlugin(
      new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin "bower.json", ["main"]
    )
    new HtmlWebpackPlugin
      template: __dirname + '/index.html'
      title: config.title
    new webpack.optimize.UglifyJsPlugin
  ]
