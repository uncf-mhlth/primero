_primero.Views.SaveFilters = _primero.Views.Base.extend({
  el: '#save_filters',

  events: {
    'click .save_user_filters': 'save_user_filters',
    'click .user_filter': 'get_filter'
  },

  get_filter: function(e) {
    _primero.get_filter(e);
  },

  save_user_filters: function() {
    var self = this;
    var url = "/saved_searches";
    var name = $(self.el).find('input[name="name"]').val();
    var record_type = window._primero.model_object;
    var payload = {
      name: name,
      filter: _primero.filters,
      record_type: record_type
    };

    if (name){
      $.post(url, payload, function(response) {
        console.log('message', response);
        $(self.el).find('.message').html(response.message).fadeIn();
      });
    } else {
      $(this.el).find('.message').show();
    }
  }
});
