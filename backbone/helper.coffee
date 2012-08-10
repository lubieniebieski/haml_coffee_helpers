class App.Helper

  constructor: (options)->
    # _.extend(@, Routes) # if you have js-routes
    # @currentUser = new App.Models.User(gon.current_user) if gon.current_user
    @addViewHelpers()

  addViewHelpers: ->
    HAML.globals = ->
      globals = {

      }

      for key, template of JST
        if helper = key.match /^backbone\/templates\/helpers\/(.+)/
          globals[helper[1]] = template
      globals
