class Cookbook.MenusRouter extends Backbone.Router

  routes: {
    "menus/:id": "showMenu",
    "menus/:id/edit" : "editMenu"
  },

  constructor: ->
    super
    @menuView = new Cookbook.MenuView(el: $("#menu-view"))
    @menuListView = new Cookbook.MenuListView(el: $("#menu-list-view"))
    @menuEditView = new Cookbook.MenuEditView(@menuView)

  list: ->
    @menuListView.collection = new Cookbook.Menus
    @menuListView.collection.fetch success: => @menuListView.render()

  showMenu: (id) ->
    @menuView.model = new Cookbook.Menu(id: id)
    @menuView.model.fetch success: => @menuView.render()

  editMenu: (id) ->
    @menuEditView.model = new Cookbook.Menu(id: id)
    @menuEditView.model.fetch success: => @menuEditView.render()