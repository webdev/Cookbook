class Cookbook.MenuView extends Backbone.View

  render: ->
    @el.html JST["menu_view_template"] @

  edit: ->
    @el.html JST["menu_view_edit_template"] @