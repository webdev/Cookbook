Cookbook.Ready = ->
  window.router = new Cookbook[$('body').data('router') + 'Router']
  Backbone.history.start()
  router.list()

$ ->
  Cookbook.Ready()