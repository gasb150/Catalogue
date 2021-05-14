const modalJs= () => {

window.onload = function () {


  let rootEl = document.documentElement;
  let modals = getAll('.modal');
  let modalButtons = getAll('.modal-button');
  let modalCloses = getAll('.modal-background, .modal-close, .modal-card-head .delete, .modal-card-foot .button');

  if (modalButtons.length > 0) {
    modalButtons.forEach(function (el) {
      el.addEventListener('click', function () {
        let target = el.dataset.target;
        let id_target = document.getElementById(target);
        rootEl.classList.add('is-clipped');
        id_target.classList.add('is-active');
      });
    });
  }

  if (modalCloses.length > 0) {
    modalCloses.forEach(function (el) {
      el.addEventListener('click', function () {
        closeModals();
      });
    });
  }

  document.addEventListener('keydown', function (event) {
    let e = event || window.event;
    if (e.keyCode === 27) {
      closeModals();
    }
  });

  function closeModals() {
    rootEl.classList.remove('is-clipped');
    modals.forEach(function (el) {
      el.classList.remove('is-active');
    });
  }

  // Functions

  function getAll(selector) {
    return Array.prototype.slice.call(document.querySelectorAll(selector), 0);
  }

};
}
export default modalJs