#format 1.2
#name SOT-23-5
#id 40647d9eb4a0430696352beffa539ef5
#parent 28bc4baba8cf4350be1102f5bef6c1cf
#desc generic SOT-23-5 footprint
#desc based on Microchip SOT-23-5

footprint = () ->
  
  w = 0.1
  dx = 1.2
  dy = 0.6
  #x = 1.9/2
  #y = (2.742-2*0.972)/2 + dy/2
  between = 2.8

  pad = new Smd
  pad.dx = dx
  pad.dy = dy

  d = new Rect
  d.type = 'docu'
  d.dx = 0.6
  d.dy = 0.51
  d.x = -(3.2-0.6)/2+between/2 

  l = dual [pad,d], 6, 0.95, between
  l = remove l, 5

  docu = make_rect 1.8, 3.1, w, 'docu'
  silk = make_rect 4.5, 3.5, w, 'silk'

  c = new Circle 0.1
  c.r = 0.2
  c.x = -2.3+0.3
  c.y = 2.1

  name = new Name 2.8
  value = new Value -2.8
  combine [name, value, l, docu,silk, c]