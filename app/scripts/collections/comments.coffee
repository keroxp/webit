'use strict';

class webit.Collections.CommentsCollection extends Backbone.Collection
  model: webit.Models.CommentsModel
  comparetor : "created_at"