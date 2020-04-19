'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "4a0db662a8434098378be822424ac0e2",
"/": "4a0db662a8434098378be822424ac0e2",
"icons/Icon-512.png": "c13d4f99f37ece68d8eb9d5595f346e9",
"icons/Icon-192.png": "7fb6dbaa78864ad5147278e8fd7bd67f",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "6acc7d6cffa21f6eda4baaa90e835fd2",
"assets/assets/fonts/googleFonts/Fjalla-One/Fjalla-One-400.ttf": "6d03f83cb1e9751dfe8c4b7bdd0cf632",
"assets/FontManifest.json": "6d72a84c631f1b111f699d23a5600f5a",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "581ef7a3e3062398af2a3aa885e167c9",
"assets/LICENSE": "fc6f479da435a309aa95ba588a05307d",
"favicon.png": "1202a5fdb6f25e4a6a7bc03b41462b2a",
"main.dart.js": "7b661370b0080c7dcf689a3b85749546",
"manifest.json": "785fcd877ef0b19d355b736013e29880"
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
