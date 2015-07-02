'use strict'

###*
 # @ngdoc function
 # @name beaconDynamicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the beaconDynamicApp
###
app = angular.module 'beaconDynamicApp'
  
app.controller 'HeaderCtrl', ($scope, $state) ->
    $scope.isActive = (stateToCheck) ->
        return $state.includes(stateToCheck)

app.controller 'MainCtrl', ($scope) ->
    $scope.slides = [
        {
            src: "images/beacon-mortuary-home.png"
            main_caption: "Beacon Mortuary"
            secondary_caption: "Let us be the light that guides you"
        }
    ]
    $scope.showNav = $scope.slides.length > 1