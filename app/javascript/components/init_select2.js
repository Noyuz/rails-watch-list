import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  const element = document.querySelector('.select2');
  if (element) {
    $('.select2').select2();
  }
};

export { initSelect2 };
