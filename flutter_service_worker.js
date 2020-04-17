'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "e62a49d4cb42973a2f78f05738407370",
"/": "e62a49d4cb42973a2f78f05738407370",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/assets/fonts/googleFonts/Fjalla-One/Fjalla-One-400.ttf": "6d03f83cb1e9751dfe8c4b7bdd0cf632",
"assets/FontManifest.json": "63b588de78fed76e52efd17c26f3ecd5",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "efd7511aecf08ba3f60415b75cdd069a",
"assets/LICENSE": "a14fcc2adeac3cd035eb9da7c0e48b12",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "af8a6e85b8e2fa67ffe2da7134ece2de",
"manifest.json": "71764ea01cb0c5f765cf4d88a86ca409"
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
