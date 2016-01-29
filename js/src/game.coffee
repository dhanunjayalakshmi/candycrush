Game =
  shapes: ["heart", "star", "square", "circle"]
  randomShapeClass: ->
    "fa-" + Game.shapes[Math.floor(Math.random()*Game.shapes.length)]
  init: ->
    $.each $(".cell i"), (i,ele) ->
      $(ele).addClass Game.randomShapeClass

$ ->
  Game.init()
