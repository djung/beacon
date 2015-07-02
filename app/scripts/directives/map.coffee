'use strict'

app = angular.module 'beaconDynamicApp'

app.directive 'beaconMap', () ->
    link: ($scope, $element, $attributes, controller) ->
        map = new GMaps
            div: '#map'
            lat: 34.027926
            lng: -118.504075
        map.addMarker
            lat: 34.027926
            lng: -118.504075
            title: 'Address'      
            infoWindow:
                content: '<h5 class="title">Beacon Mortuary</h5><p><span>Beacon Mortuary</span><br><span class="street-address">616 Alta</span><br><span class="locality">Santa Monica</span>,<span class="region">CA</span>,<span class="postal-code">90402</span><span class="country-name">United States</span></p>'
            