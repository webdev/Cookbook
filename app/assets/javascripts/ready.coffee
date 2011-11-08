Cookbook.Ready = ->
  window.router = new Cookbook[routerName]
  Backbone.history.start()
  router.list()

$ ->
  Cookbook.Ready()