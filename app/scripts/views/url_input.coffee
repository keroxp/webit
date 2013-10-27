'use strict';

class webit.Views.UrlInputView extends Backbone.View
  el: $ "#url-input"
  events:
    "keyup input": "onKeyUp"
  onKeyUp: (e) ->
    if e.keyCode is 13
      # エンターが押されたらイベントを発火
      url = $(e.target).val()
      app.trigger "change:url-input", url