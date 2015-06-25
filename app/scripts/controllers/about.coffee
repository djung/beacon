'use strict'

###*
 # @ngdoc function
 # @name beaconDynamicApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the beaconDynamicApp
###
angular.module 'beaconDynamicApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
