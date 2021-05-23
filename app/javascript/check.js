window.onload = function() {
  const $ = window.jQuery;

  // チェックボックスをDOMに追加
  $('h5').prepend(
      '<div><input type="checkbox" class="checkbox" value="3">English</input><input type="checkbox" class="checkbox" value="4">Français</input><input type="checkbox" class="checkbox" value="5">Español</input><div>'
  );

  $('.checkbox').change(function() {
      let colIndex = Number($(this).val());

      $('td:nth-child(' + (colIndex + 1) + ')').toggle();
      $('th')
          .eq(colIndex)
          .toggle();
  });
};