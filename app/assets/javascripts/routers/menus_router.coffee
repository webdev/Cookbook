class Cookbook.MenusRouter extends Backbone.Router

  routes: {
    "menus/:id": "showMenu",
    "menus/:id/edit" : "editMenu"
  },

  constructor: ->
    super
    @menuView = new Cookbook.MenuView(el: $("#menu-view"))

  list: ->
    @menuListView = new Cookbook.MenuListView(el: $("#menu-list-view"))
    @menuListView.collection = new Cookbook.Menus
    @menuListView.collection.fetch success: => @menuListView.render()

  showMenu: (id) ->
    @menuView.model = new Cookbook.Menu(id: id)
    @menuView.model.fetch success: => @menuView.render()

  editMenu: (id) ->
    @menuView.model = new Cookbook.Menu(id: id)
    @menuView.model.fetch success: => @menuView.edit()