'use strict'

###*
 # @ngdoc function
 # @name beaconDynamicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the beaconDynamicApp
###
app = angular.module 'beaconDynamicApp'
  
app.controller 'MainCtrl', ($scope) ->
    $scope.slides = [
        {
            src: "images/beacon-mortuary-home.png"
            main_caption: "Beacon Mortuary Homepage"
            secondary_caption: "Call us for help."
        }
    ]
    $scope.showNav = $scope.slides.length > 1