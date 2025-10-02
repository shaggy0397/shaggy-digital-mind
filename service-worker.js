const CACHE_NAME = 'sh4c3y-cache-v1';
const urlsToCache = [
  '/',
  '/index.html',
  '/style.css',
  '/sticker.html',
  '/manifest.json'
];

// Instalación del service worker
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME).then(cache => {
      return cache.addAll(urlsToCache);
    })
  );
});

// Activación y limpieza de caché antigua
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys =>
      Promise.all(
        keys.map(key => {
          if (key !== CACHE_NAME) {
            return caches.delete(key);
          }
        })
      )
    )
  );
});

// Interceptar peticiones y servir desde caché
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request).then(response => {
      return response || fetch(event.request);
    })
  );
});
