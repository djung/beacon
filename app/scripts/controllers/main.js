'use strict';

/**
 * @ngdoc function
 * @name beaconDynamicApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the beaconDynamicApp
 */
angular.module('beaconDynamicApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
