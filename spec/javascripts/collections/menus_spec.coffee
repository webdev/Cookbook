describe "Menus", ->
  beforeEach ->
    @menus = new Cookbook.Menus()

  describe "fetching", ->
    beforeEach ->
      @menus.fetch()
      @request = mostRecentAjaxRequest()
      @attributes = {title: "Food", description: "Cook it"}
      @request.response
        status: 200
        responseText: JSON.stringify [@attributes]
    it "fetches from the recipe from the backend", ->
      expect(@request).toRequest
        method: "GET"
        url: "/menus"
    it "receives a recipe", ->
      expect(@menus.models.length).toEqual 1
    it "instantiates a Menu model", ->
      # Doesn't get the "typeof" correctly in IE, but so what?
      expect(@menus.models[0].constructor.name).toEqual("Menu")
