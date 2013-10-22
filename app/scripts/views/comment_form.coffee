'use strict';

class webit.Views.CommentFormView extends Backbone.View
  template: _.template($("#comment-area").html())
  events:
    "focus #comment-textarea" : "onTextAreaFocus"
  onTextAreaFocus : (e) ->
    alert "focused!"