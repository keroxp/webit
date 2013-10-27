window.webit = window.app =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    'use strict'
    # app自体をグローバルなイベントトリガ&リスナにする
    _.extend this, Backbone.Events
    # Router
    this.AppRouter = new this.Routers.AppRouter
    Backbone.history.start
      pushState: true
      root: "/page/"
    # コメントのコレクション
    webit.CommentsCollection = new webit.Collections.CommentsCollection
    # コメントフォーム
    webit.CommentFormView = new webit.Views.CommentFormView
    # コメントのテーブルビュー
    webit.CommentsTableView = new webit.Views.CommentsTableView
    # URLのインプット
    this.UrlInputView = new this.Views.UrlInputView
    # iframe
    this.IframeView = new this.Views.IframeView
    # launch!
    console.log 'Hello from Backbone!'
    # DEBUG
    this.on "change:url-input", (url) ->
      this.url = url
      console.log url