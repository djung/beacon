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
    'ngAnimate'
    'ngAria'
    'ngCookies'
    'ngMessages'
    'ngResource'
    'ui.router'
    'ngSanitize'
    'ngTouch'
    'angular-flexslider'
    'restangular'
    'slugifier'
  ]
  
app.config (RestangularProvider) ->
    RestangularProvider.setBaseUrl('http://api.beaconmortuary.com/')

    RestangularProvider.setRestangularFields
        id: "_id"
