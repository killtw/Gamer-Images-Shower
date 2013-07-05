// Generated by CoffeeScript 1.6.2
/*
// ==UserScript==
// @id             gamer_images_shower
// @name           Gamer images shower
// @version        1.0.3
// @namespace      http://blog.k2ds.net/
// @author         killtw
// @description    使巴哈姆特哈啦版的文章在未登入階段也能自動載入圖片
// @match          http://forum.gamer.com.tw/C.php?*
// @match          http://forum.gamer.com.tw/G2.php?*
// ==/UserScript==
*/

var attach_img;

attach_img = function() {
  var image, _i, _len, _ref;

  _ref = document.getElementsByName('attachImgName');
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    image = _ref[_i];
    image.innerHTML = "<img src=" + image.id + "></img>";
  }
};

attach_img();

window.addEventListener('AutoPagerAfterInsert', function() {
  attach_img();
}, false);
