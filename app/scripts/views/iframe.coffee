'use strict';

class webit.Views.IframeView extends Backbone.View
  el: $ "#iframe"
  initialize: (d) ->
    this.listenTo app, "change:url-input", this.onChangeUrlInput
    this.render()
  onChangeUrlInput: (url) ->
    this.render(url)
  render : (url) ->
    this.$el.attr("src", url)
    return this