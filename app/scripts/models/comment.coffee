'use strict';

class webit.Models.CommentModel extends Backbone.Model
  initialize : (data) ->
    this.set("text", data.text) if data.text
    this.set("name", data.name) if data.name
    m = moment(this.created_at)
    this.set("formatted_date", m.format("YYYY MM/DD HH:mm:ss"))
    console.log this
  defaults:
    name : "anonymous"
    text : ""
    created_at : new Date
    formatted_date : ""
    likes_count : 0
    dislikes_count : 0

