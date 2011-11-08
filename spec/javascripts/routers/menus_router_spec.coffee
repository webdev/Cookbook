describe "MenusRouter", ->
  beforeEach ->
    @router = new Cookbook.MenusRouter
    clearAjaxRequests()

  describe "showMenu", ->
    beforeEach ->
      spyOn(@router.menuView, "render")
      @router.showMenu(1)
      @request = mostRecentAjaxRequest()
      @request.response
        status: 200
    it "renders the MenuView", ->
      expect(@router.menuView.render).toHaveBeenCalled()

    it "fetches the model by id", ->
      expect(@request).toRequest
        method: "GET"
        url: "/menus/1"