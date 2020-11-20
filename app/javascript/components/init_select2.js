const init_select2 = () => {
  $(document).ready(function() {
    $('select#filter').select2({
      placeholder: "Filter a category",
      allowClear: true
    });
  });
};

export { init_select2 };
