self.addEventListener('install', event => {
  event.waitUntil(
   caches.open('shaggy-cache-v2').then(cache => {
      return cache.addAll([
        './',
        './index.html',
        './style.css',
        './app.js',
        './manifest.json',
        './assets/icon-192.png',
        './assets/icon-512.png'
      ]);
    })
  );
});

self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request).then(response => response || fetch(event.request))
  );
});
