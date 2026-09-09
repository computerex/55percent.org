const screens = [...document.querySelectorAll('.screen')];
const progressBar = document.querySelector('#progressBar');
const stepLabel = document.querySelector('#stepLabel');
let current = 0;

function showScreen(index) {
  current = Math.max(0, Math.min(index, screens.length - 1));
  screens.forEach((screen, i) => screen.classList.toggle('active', i === current));
  progressBar.style.width = `${((current + 1) / screens.length) * 100}%`;
  stepLabel.textContent = `0${current + 1} / 0${screens.length}`;
  window.scrollTo({ top: 0, behavior: 'smooth' });
}

document.querySelectorAll('.next-button').forEach(button => {
  button.addEventListener('click', () => showScreen(current + 1));
});

document.querySelector('#restartButton').addEventListener('click', () => showScreen(0));
document.querySelector('#endingRestart').addEventListener('click', () => showScreen(0));

document.querySelectorAll('.objection').forEach(button => {
  button.addEventListener('click', () => {
    document.querySelector('#response').textContent = button.dataset.response;
    document.querySelectorAll('.objection b').forEach(mark => { mark.textContent = '+'; });
    button.querySelector('b').textContent = '−';
  });
});

document.querySelector('#addressForm').addEventListener('submit', event => {
  event.preventDefault();
  document.querySelector('#formResponse').textContent = 'Actually, we don’t need your address. You wouldn’t give us 55% anyway.';
  setTimeout(() => showScreen(4), 1200);
});
