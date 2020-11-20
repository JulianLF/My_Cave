const filter = (value) => {
  const products = document.querySelectorAll('.all > .card-product');
  products.forEach((product) => {
    if (product.dataset.category !== value && value !== '') {
      product.classList.add('d-none');
    } else {
      product.classList.remove('d-none');
    }
  });
};


const initFilter = () => {
  const selector = document.querySelector('select#category_filter');
  selector.addEventListener('change', (event) => {
    filter(event.currentTarget.value);
  });
};

export { initFilter };
