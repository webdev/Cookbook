class Cookbook.MenuView extends Backbone.View

  render: ->
    @el.html JST["menu_view_template"] @
