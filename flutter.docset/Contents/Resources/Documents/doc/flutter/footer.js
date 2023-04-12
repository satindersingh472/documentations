(function() {
  var span = document.querySelector('footer>span');
  if (span) {
    span.innerText = 'Flutter 3.7.10-0.0.pre.1 • 2023-04-03 17:53 • 4b12645012 • stable';
  }
  var sourceLink = document.querySelector('a.source-link');
  if (sourceLink) {
    sourceLink.href = sourceLink.href.replace('/master/', '/4b12645012/');
  }
})();
