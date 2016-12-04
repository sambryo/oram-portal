$(document).ready(function () {
  var fileInput = $(".file-input-button");
  var label = $(".file-input-label");
  if (fileInput) {
    fileInput = fileInput.first();
    $(document).on("change", ".file-input-button", function(e) {
      var fileName = e.target.value.split( "\\" ).pop();

      if (fileName && label) {
        label.first().html(fileName);
      }
    })
  }
});
