$('#testmodal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    $.ajax({
      url: "tastes/new",
      success: function(data){
          $modal.find('.modal-body').html(data)
      }
    });
})
