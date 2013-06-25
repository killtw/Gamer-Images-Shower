###
// ==UserScript==
// @id             gamer_images_shower
// @name           Gamer images shower
// @version        1.0.0
// @namespace      http://blog.k2ds.net/
// @author         killtw
// @description    使巴哈姆特哈啦版的文章在未登入階段也能自動載入圖片
// @match          http://forum.gamer.com.tw/C.php?*
// @match          http://forum.gamer.com.tw/G2.php?*
// @include        http://forum.gamer.com.tw/C.php?*
// @include        http://forum.gamer.com.tw/G2.php?*
// ==/UserScript==
###

if document.getElementsByClassName('TOP-my')[0].childNodes[0].href is 'https://user.gamer.com.tw/login.php'
  attach_img = () ->
    for image in document.getElementsByName('attachImgName')
      image.innerHTML = "<img src=#{image.id}></img>"
    return

  window.addEventListener 'load', attach_img, false

  window.addEventListener 'AutoPagerAfterInsert', attach_img, false