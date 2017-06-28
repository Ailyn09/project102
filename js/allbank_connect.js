// Code goes here
var allbanks = (function () {
  var allbanks = null;
  
  $.ajax({
    'async': false,
    'global': false,
    'url': 'allbanks.json',
    'dataType': "json",
    'success': function (data) {
        allbanks = data;
    }
  });
  
  return allbanks;
})();

$(document).ready(function () {
  var listItems = '<option selected="selected" value="0">Select Bank</option>';

  for (var i = 0; i < allbanks.banks.length; i++) {
    listItems += "<option data-tokens='" + allbanks.banks[i].bankname + "' value='" + allbanks.banks[i].bankname + "'>" + allbanks.banks[i].bankname + "</option>";
  }

  $("#supplier_bank_name").html(listItems);
});
