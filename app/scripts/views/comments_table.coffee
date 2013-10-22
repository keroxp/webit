'use strict';

class webit.Views.CommentsTableView extends Backbone.View
  el : $("#comments-table")
  initialize : (data) ->
    this.$inner = this.$el.children("#comments-table-inner")
    this.listenTo webit.CommentsCollection, "add", this.onAddComment
    console.log this
  onAddComment : (comment) ->
    # rowを作成
    newCommentRow = new webit.Views.CommentRowView {
      model : comment
    }
    # prepend
    el = newCommentRow.render().$el
    this.$inner.prepend el