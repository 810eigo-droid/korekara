(() => {
  const toggle = document.querySelector('.menu-toggle');
  const drawer = document.getElementById('menu');
  const overlay = document.querySelector('.menu-overlay');
  const close = drawer && drawer.querySelector('.drawer-close');
  if (!toggle || !drawer || !overlay) return;
  const setOpen = open => {
    drawer.hidden = !open; overlay.hidden = !open;
    toggle.setAttribute('aria-expanded', String(open));
    toggle.setAttribute('aria-label', open ? 'メニューを閉じる' : 'メニューを開く');
    document.documentElement.classList.toggle('menu-open', open);
    if (open) (close || drawer).focus();
  };
  toggle.addEventListener('click', () => setOpen(drawer.hidden));
  overlay.addEventListener('click', () => setOpen(false));
  if (close) close.addEventListener('click', () => { setOpen(false); toggle.focus(); });
  drawer.querySelectorAll('a[href^="#"]').forEach(a => a.addEventListener('click', () => setOpen(false)));
  document.addEventListener('keydown', e => { if (e.key === 'Escape' && !drawer.hidden) { setOpen(false); toggle.focus(); } });
})();
