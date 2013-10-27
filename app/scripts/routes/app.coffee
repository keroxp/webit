'use strict';

class webit.Routers.AppRouter extends Backbone.Router
  routes:
    "page/:url" : "onPage"
  onPage: (url) ->
    alert url