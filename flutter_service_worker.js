'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "eb13b684dfd94ee641f9a6e8fef0e89a",
"/": "eb13b684dfd94ee641f9a6e8fef0e89a",
"icons/favicon_512x512.png": "c13d4f99f37ece68d8eb9d5595f346e9",
"icons/favicon_180x180.png": "79cab06680ec6ed4ba48b073ed564cc7",
"icons/browserconfig.xml": "cdffa7d93edc768b6bb8272cdd863723",
"icons/favicon_192x192.png": "7fb6dbaa78864ad5147278e8fd7bd67f",
"icons/favicon_16x16.png": "f22e2980b0d18abb2dbdeb95c344f838",
"icons/favicon_270x270.png": "c3093bcdc87271f6d1368526709f662f",
"icons/favicon_32x32.png": "83b77edd8852962b8d29f7b8fd13e7ab",
"assets/assets/fonts/googleFonts/Fjalla-One/Fjalla-One-400.ttf": "6d03f83cb1e9751dfe8c4b7bdd0cf632",
"assets/FontManifest.json": "63b588de78fed76e52efd17c26f3ecd5",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "efd7511aecf08ba3f60415b75cdd069a",
"assets/LICENSE": "a14fcc2adeac3cd035eb9da7c0e48b12",
"main.dart.js": "465b6fa5bc8885d4408e6aeb54829dc1",
"manifest.json": "c3956ec5329e39410ca24d98eefb89cb"
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
