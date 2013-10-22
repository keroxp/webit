window.webit =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'
    # コメントのコレクション
    webit.CommentsCollection = new webit.Collections.CommentsCollection
    # コメントフォーム
    webit.CommentFormView = new webit.Views.CommentFormView
    # コメントのテーブルビュー
    webit.CommentsTableView = new webit.Views.CommentsTableView
    # launch!
    console.log 'Hello from Backbone!'