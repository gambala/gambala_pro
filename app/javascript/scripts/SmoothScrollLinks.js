import SmoothScroll from 'smooth-scroll';

const scroll = new SmoothScroll();

const toggle = (link) => {
  const anchor = document.querySelector(link.getAttribute('href'));
  scroll.animateScroll(anchor, link, { offset: 0 });
};

const delegateClick = (event) => {
  const link = event.target.closest('[data-scroll]');
  if (!link) return;
  event.preventDefault();
  toggle(link);
};

const start = () => {
  document.addEventListener('click', delegateClick);
};

export default { toggle, start };
