'use strict';

class webit.Views.CommentFormView extends Backbone.View
  el: $("#comment-area")
  initialize : ->
    this.$textarea = $("#comment-textarea")
    this.$sendButton = $("#comment-send-button")
    this.$addButton = $("#comment-add-button")
    console.log this
  events:
    "focus #comment-textarea" : "onTextAreaFocus"
    "click #comment-send-button" : "onSend"
  onTextAreaFocus : (e) ->
    console.log e
  onSend : (e) ->
    # disabled
    this.$sendButton.attr("disabled","disabled")
    # コメントを生成
    newComment = new webit.Models.CommentModel {
      text: this.$textarea.val()
    }
    # コレクションに追加
    webit.CommentsCollection.add newComment
    # コメントをクリア
    this.$textarea.val("")
    # enabled
    this.$sendButton.removeAttr("disabled")