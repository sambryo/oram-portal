$(document).ready(function () {
  var fileInput = $(".file-input-button");
  var label = $(".file-input-label");
  if (fileInput) {
    fileInput = fileInput.first();
    $(document).on("change", ".file-input-button", function(e) {
      var fileName = e.target.value.split( "\\" ).pop();
      if (fileName && fileName.split('.').reverse()[0].toLowerCase() !== "pdf") {
        e.target.value = "";
        $(".filetype-warning").html("Only .pdf files can be submitted");
        label.first().html("Choose a file");
      } else {
        $(".filetype-warning").html("");
        if (fileName && label) {
          label.first().html(fileName);
        }
      }
    });
  }
});
