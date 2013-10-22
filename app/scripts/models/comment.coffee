'use strict';

class webit.Models.CommentModel extends Backbone.Model
  initialize : (data) ->
    this.name ?= data.name
    this.text ?= data.text
  defaults:
    name : "anonymous"
    text : ""
    created_at : new Date
    likes_count : 0
    dislikes_count : 0

