'use strict'

###*
 # @ngdoc function
 # @name beaconDynamicApp.controller:MerchandiseCtrl
 # @description
 # # MerchandiseCtrl
 # Controller of the beaconDynamicApp
###
angular.module 'beaconDynamicApp'
  .controller 'MerchandiseCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
