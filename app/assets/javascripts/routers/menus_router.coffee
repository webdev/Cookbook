class Cookbook.MenusRouter extends Backbone.Router

  routes:
    "menus/:id": "showMenu"

  constructor: ->
    super
    @menuView = new Cookbook.MenuView(el: $("#menu-view"))

  showMenu: (id) ->
    @menuView.model = new Cookbook.Menu(id: id)
    @menuView.model.fetch success: => @menuView.render()