#
# 配置文件
#

module.exports =

  port: process.env.PORT or 8080

  title: 'todomvc'

  clientId: 1

  eaccount:
    baseUrl: 'http://eaccount-api.e-research-solutions.com'

  api:
    baseUrl: 'http://api.e-research-solutions.com'
