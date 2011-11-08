describe "Menu", ->
  beforeEach ->
    @menu = new Cookbook.Menu(title: "Breakfast", description: "The most important meal of the day")
  it "has a title", ->
    expect(@menu.get('title')).toEqual("Breakfast")
  it "has a description", ->
    expect(@menu.get('description')).toMatch(/important/)

  describe "fetching", ->
    beforeEach ->
      @recipe = new Cookbook.Menu(id: 2)
      @recipe.fetch()
      @request = mostRecentAjaxRequest()
    it "fetches from the menu from the backend", ->
      expect(@request).toRequest
        method: "GET"
        url: "/menus/2"
