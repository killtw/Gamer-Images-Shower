###
// ==UserScript==
// @id             gamer_images_shower
// @name           Gamer images shower
// @version        1.0.3
// @namespace      http://blog.k2ds.net/
// @author         killtw
// @description    使巴哈姆特哈啦版的文章在未登入階段也能自動載入圖片
// @match          http://forum.gamer.com.tw/C.php?*
// @match          http://forum.gamer.com.tw/Co.php?*
// @match          http://forum.gamer.com.tw/G2.php?*
// ==/UserScript==
###

attach_img = () ->
  for image in document.getElementsByName('attachImgName')
    image.innerHTML = "<img src=#{image.id}></img>"
  return

attach_youtube = () ->
  for video in document.getElementsByName('attachMovieName')
    video_id = video.href.match(/v\/(\w+)/)[1]
    video.innerHTML = "<iframe width='640' height='360' src='//www.youtube.com/embed/#{video_id}' frameborder='0' allowfullscreen></iframe>"
  return

attach_img()
attach_youtube()

window.addEventListener 'AutoPagerAfterInsert', () ->
  attach_img()
  attach_youtube()
  return
, false
