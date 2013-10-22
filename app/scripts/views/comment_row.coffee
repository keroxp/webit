'use strict';

class webit.Views.CommentRowView extends Backbone.View
  initialize : (d) ->
    console.log this
  template : JST["app/scripts/templates/comment_row.ejs"]
  render : () ->
    this.$el.html this.template this.model.attributes
    return this