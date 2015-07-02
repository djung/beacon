'use strict'

###*
 # @ngdoc overview
 # @name beaconDynamicApp
 # @description
 # # beaconDynamicApp
 #
 # Main module of the application.
###
app = angular.module 'beaconDynamicApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ui.router',
    'ngSanitize',
    'ngTouch',
    'angular-flexslider',
    'restangular'
  ]
  
app.config (RestangularProvider) ->
    RestangularProvider.setBaseUrl('http://192.168.6.137:5000/')

    RestangularProvider.setRestangularFields
        id: "_id"
