$ ->
  # load_map()
  enable_map_when_clicked() if screen.width >= 768

# On devices with large screens, override the link and activate map when clicked
# instead of opening map in new window
enable_map_when_clicked = ->
  $('.map_container .overlay').click activate_map
    
activate_map = ->
  $('.map_container .overlay').hide()
  $('body').one 'mousemove', deactivate_map
  false   # prevent default link action

deactivate_map = ->
  $('.map_container .overlay').show()

# another possibility for displaying the map
# load_map = ->
#   map_options =
#     # mapTypeId: google.maps.MapTypeId.ROADMAP
#     # center: new google.maps.LatLng(44.5403, -78.5463)
#     # zoom: 8
#     scrollwheel: false
#   map = new google.maps.Map($('.map_holder')[0], map_options)
#
#   new google.maps.KmlLayer
#     url: 'http://mapsengine.google.com/map/u/0/kml?mid=zEAPhiHiDgA8.kS4PuSyYyc2I'
#     map: map
