window.webit =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'
    this.CommentFormView = new webit.Views.CommentFormView
    console.log 'Hello from Backbone!'

$ ->
  'use strict'
  webit.init();
