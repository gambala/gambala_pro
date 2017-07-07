import FontFaceObserver from 'fontfaceobserver';

const load = (fontFamily, parametrizedFamily) => {
  const html = document.documentElement;
  const font = new FontFaceObserver(fontFamily);

  font.load()
    .then(() => {
      html.classList.add(parametrizedFamily);
      sessionStorage.setItem(parametrizedFamily, true);
    })
    .catch(() => {
      sessionStorage.setItem(parametrizedFamily, false);
    });
};

export default { load };
