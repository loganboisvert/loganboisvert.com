'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "3c2a8eb497b8083cad09096b4ac3f080",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "6d72a84c631f1b111f699d23a5600f5a",
"assets/LICENSE": "bed381c12d2b5d0a56d39b3324719889",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "6acc7d6cffa21f6eda4baaa90e835fd2",
"assets/assets/fonts/googleFonts/Fjalla-One/Fjalla-One-400.ttf": "6d03f83cb1e9751dfe8c4b7bdd0cf632",
"assets/AssetManifest.json": "581ef7a3e3062398af2a3aa885e167c9",
"favicon.png": "1202a5fdb6f25e4a6a7bc03b41462b2a",
"manifest.json": "2697e475bbfa787f66b3a6e12e55b14e",
"icons/Icon-512.png": "c13d4f99f37ece68d8eb9d5595f346e9",
"icons/Icon-192.png": "7fb6dbaa78864ad5147278e8fd7bd67f",
"index.html": "7753b4438133a03815fdfb5e68bc48ee",
"/": "7753b4438133a03815fdfb5e68bc48ee"
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
