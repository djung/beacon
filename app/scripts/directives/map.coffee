'use strict'

app = angular.module 'beaconDynamicApp'

app.directive 'beaconMap', () ->
    link: ($scope, $element, $attributes, controller) ->
        map = new GMaps
            div: '#map'
            lat: 51.451573
            lng: -2.595008
        map.addMarker
            lat: 51.451573
            lng: -2.595008
            title: 'Address'      
            infoWindow:
                content: '<h5 class="title">College Green Campus</h5><p><span class="region">Address line goes here</span><br><span class="postal-code">Postcode</span><br><span class="country-name">Country</span></p>'
            