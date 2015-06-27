'use strict'

app = angular.module 'beaconDynamicApp'

app.directive 'dropdownHover', () ->
    link: ($scope, $element, $attributes, aController) ->
        $element.hover(
            () ->
                $(this).addClass('open')
            () ->
                $(this).removeClass('open')
        )