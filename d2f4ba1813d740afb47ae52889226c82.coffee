#format 1.2
#name 0603_S
#id d2f4ba1813d740afb47ae52889226c82
#parent 10644a0b9a3a4f2a8a8b0add2ba7ce21
#desc Generic 0603 footprint
#desc made slightly smaller
#desc for more densely populated boards
#desc used for resistor and capacitor

footprint = () ->
  smd = new Smd
  smd.dx = 0.7
  smd.dy = 1.0
  l = rot_single [smd], 2, 1.7

  name = new Name 1.4
  value = new Value -1.4

  keepout = make_rect 2.7, 1.2, 0.1, 'keepout'
  silk = make_rect 3-0.1, 1.5-0.1, 0.1, 'silk'

  docu1 = new Line 0.1
  docu1.x1 = -0.35
  docu1.y1 = 0.45
  docu1.x2 = 0.35
  docu1.y2 = 0.45
  docu1.type = 'docu'
  docu2 = mirror_x clone docu1
  docu3 = new Rect
  docu3.dx = 0.5
  docu3.dy = 1
  docu3.x = -0.6
  docu3.type = 'docu'
  docu4 = mirror_y clone docu3
  docu4.type = 'docu'

  docu = [docu1, docu2, docu3, docu4]
  
  combine [name ,value, l,  docu, keepout, silk]