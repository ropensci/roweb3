document.querySelectorAll('a.cite').forEach(el => {
  const btn = document.createElement('button');
  btn.typeName = 'button';
  btn.className = 'btn-sm btn-primary copy-button';
  btn.innerHTML = "<i class='fa fa-copy'></i>";
  btn.onclick = () => navigator.clipboard.writeText(el.getAttribute("href"));
  el.parentNode.append(btn);
});