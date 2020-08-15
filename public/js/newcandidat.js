//region
// find region data and append all in ul
var list = $('#region-list');
var candidat = $('#candidat');
candidat.focus(function () {
  for (var i = 0; i < region.length; i++) {
    list.append('<li class="region-list-item">' + region[i].name + '</li>');
  }
  list.fadeIn(200);
  list2.fadeOut(200);
});
// close ul
candidat.focusout(function () {
  if ($(this).val() != '') {
    list.fadeOut(200);
  }
});
// append in input types
list.on('click', 'li', function (e) {
  // console.log($(e.target).html().split(' '));
  candidat.val($(e.target).html());
  list.fadeOut(200);
});
// find some word in input
candidat.on('input', function () {
  var filter = $(this).val().toUpperCase();
  var list_li = $('.region-list-item');
  // find element same to types
  for (i = 0; i < list_li.length; i++) {
    txtValue = list_li[i].textContent.toUpperCase() || list_li[i].innerText.toUpperCase();
    if (txtValue.indexOf(filter) > -1) {
      list_li[i].style.display = '';
    } else {
      list_li[i].style.display = 'none';
    }
  }
});
// commune
var list2 = $('#commune-list');
var candidatc = $('#commune');
candidatc.focus(function () {
  if (candidat.val() == '') {
    list2.html('');
    list2.append('<div>Ajouté ou verifié le champ région avant de remplir la commune</div>');
  } else if (typeof commune.commune[`${candidat.val()}`] == 'undefined') {
    list2.html('');
    list2.append('<div>la région saisi est introuvable dans la base de donné, vauillez verifier !</div>');
  } else {
    list2.html('');
    let valeur = commune.commune[`${candidat.val()}`];
    for (var i = 0; i < valeur.length; i++) {
      list2.append('<li class="commune-list-item">' + valeur[i].name + '</li>');
    }
  }
  list.fadeOut(200);
  list2.fadeIn(200);
});
// append in input types
list2.on('click', 'li', function (e) {
  // console.log($(e.target).html().split(' '));
  candidatc.val($(e.target).html());
  list2.fadeOut(200);
});
// find some word in input
candidatc.on('input', function () {
  var filter = $(this).val().toUpperCase();
  var list_li = $('.commune-list-item');
  // find element same to types
  for (i = 0; i < list_li.length; i++) {
    txtValue = list_li[i].textContent.toUpperCase() || list_li[i].innerText.toUpperCase();
    if (txtValue.indexOf(filter) > -1) {
      list_li[i].style.display = '';
    } else {
      list_li[i].style.display = 'none';
    }
  }
});
// close ul
candidatc.focusout(function () {
  if ($(this).val() != '') {
    list2.fadeOut(200);
  }
});
