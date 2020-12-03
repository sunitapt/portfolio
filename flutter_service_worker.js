'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "73dd6263c21a4ba1996cf430fb222295",
"/": "73dd6263c21a4ba1996cf430fb222295",
"main.dart.js": "a7c2ebd4ba8c266a615566d24e427414",
"version.json": "426313f2f3133c2f20415344c4a22df3",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "288e2b94f4ae12cf54d40eaae47c3741",
"assets/AssetManifest.json": "3a66a565741a970db7c1d6b8f5d8bcbc",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/FontManifest.json": "c0c733f2f6e5d42904dbe1ead358f61c",
"assets/images/instagram.png": "8ce47fd872187bfa8d11505b3bd8944e",
"assets/images/picart.jpg": "698735e9a73447598e9cc77f3edd3b56",
"assets/images/img.jpg": "783d929dcbab9a19989e91ae09f7d7ff",
"assets/images/w.jpg": "a28297ceb6b64fc0f4cb289b2647126c",
"assets/images/sunianush.jpg": "3a290a8ef40bb2334f9e7f9a71af7c40",
"assets/images/padhku.jpg": "eafbdcaa8b9a744893d9cc4c36face6d",
"assets/images/backg2.jpeg": "f29927652389318b4ecd180627c69fc6",
"assets/images/recent_work_bg.png": "531a8461fd1ec42f03f4cfb891790635",
"assets/images/work_2.png": "e1d3843d3e6d8752cfe40f655caab6d5",
"assets/images/nikw.png": "a4a0ff24e0f351efde5f67aed3037768",
"assets/images/youtube.png": "06c43aa29ad01f69ed4c53d18eedeafe",
"assets/images/yashsuni.jpg": "214634cc1fc9e63352b372d5c015fe13",
"assets/images/whatsapp.png": "e33ef8b852729cd9dd7c6af3837f9b23",
"assets/images/people.png": "f6561cf54d239a098a72225cd21bdc80",
"assets/images/handphone.png": "0f83c7b7be97bebd73ffd38b20f25439",
"assets/images/h.jpg": "f5a037da396d577dd14bf7e6ae32e9c7",
"assets/images/download.png": "d9317d736e7b69f20f57f6ab13f34d3c",
"assets/images/work_1.png": "ff8242cdad37e4c83136a90a325810a8",
"assets/images/anu.jpg": "214531f31853894bcc80c79ba57043c0",
"assets/images/desktop.png": "d4794e3ddcb4fce9a2c12246e3b4d8a7",
"assets/images/yzg.jpg": "1f4c7debad6490004c9fdacd1f3456de",
"assets/images/sun2.jpg": "fa937c37462694aee154770e3f4b03b1",
"assets/images/messanger.png": "beacdbb3a93df25674af2f5302f5633a",
"assets/images/github-sign.png": "a29dc3691124638b000809a7696281d5",
"assets/images/t.jpg": "ea0c4cca548fa50159284ee11de54c56",
"assets/images/anushka.jpg": "6ffb55501acdf54306fb7e8f84fc117b",
"assets/images/work_3.png": "035401cff7e0fc62875bb280c53523c5",
"assets/images/as.jpeg": "89b61c283e38716b43223de82f1be38f",
"assets/images/one.jpg": "1710253bf7d9b688c4cfb76fb88b108f",
"assets/images/email.png": "f59e8ec158ec05d21c8b251d7b0017ca",
"assets/images/medium.png": "2b469e3a9620bddb8112f8479a6a2d75",
"assets/images/background.png": "0614a717659df3fd409c60ff04fac983",
"assets/images/linkedin.png": "94db7e92e51707073eea9d740f69e975",
"assets/images/hand.png": "d7c6f40ec1244a86fb4610cd515fee55",
"assets/images/gmail.png": "2c1a7560c88ea83e6b2593cd07af8ad8",
"assets/images/snapchat.png": "08ca7afbdb9290e3277332d4947f3d01",
"assets/images/contact_icon.png": "856b95eb03d60fa2576140e4c3d034b9",
"assets/images/harsh.jpg": "f40e78d3b30d234be8a3934abe10cfc9",
"assets/images/bg_img_2.png": "8257ef89b2dfeab767578260965a7e2d",
"assets/images/Hover_flip.png": "57d317fc22080b316188ebe73407065b",
"assets/images/facebook.png": "73fba5b3c8be8bf3179716d8ec861f89",
"assets/images/y.jpg": "ead10292e819f4c059eef4177d06649f",
"assets/images/twitter.png": "fdf976b38ea62efdd540126784ef8e3d",
"assets/images/sunita1.jpg": "4f8e0f12e653346b81b93abc4615a811",
"assets/images/Hover.png": "f0a2318c40269d84384f56f54d25ad69",
"assets/images/work_4.png": "74e5fc2d50c04cdd638cfa878bd2ef66",
"assets/images/skype.png": "955d4329bf55cd47008c2edd6c08ad99",
"assets/images/yash.jpg": "c2c5b502be0cff22d2dd01ea05bf4503",
"assets/NOTICES": "a8a0e4a763b8617dcf0f1016e257f3b8",
"assets/packages/eva_icons_flutter/lib/fonts/evaicons.ttf": "b600c99b39c9837f405131463e91f61a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/assets/ThisTownKygo.mp3": "325c0f73b85ee161ec698b6738563c8c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
