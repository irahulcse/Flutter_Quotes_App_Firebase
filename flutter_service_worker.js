'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "f51a0c94db59ac5b11eac7d4251ec31c",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/LICENSE": "8105521eef2891ab8b6a966f22357361",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/assets/quote_icon.png": "ae088f320c7be8df9d6df6f57f679533",
"assets/AssetManifest.json": "d6fd25ac92a5ac4221399535ba2ee5f5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "eabf40b4c4f9ee3db2c7d6ea2d29f157",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "70d2c509113d9da112c6228683cf5f4e",
"/": "70d2c509113d9da112c6228683cf5f4e"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
