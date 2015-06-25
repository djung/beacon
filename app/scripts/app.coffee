'use strict'

###*
 # @ngdoc overview
 # @name beaconDynamicApp
 # @description
 # # beaconDynamicApp
 #
 # Main module of the application.
###
angular
  .module 'beaconDynamicApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/burial-packages.html',
        templateUrl: 'views/burial-packages.html'
      .when '/cremation-packages.html',
        templateUrl: 'views/cremation-packages.html'
      .when '/burial-packages.html',
        templateUrl: 'views/burial-packages.html'
      .when '/general-price-list.html',
        templateUrl: 'views/general-price-list.html'
      .when '/custom-quote.html',
        templateUrl: 'views/custom-quote.html'
      .when '/contact.html',
        templateUrl: 'views/contact.html'  
      .when '/healthy-living.html',
        templateUrl: 'views/healthy-living.html'
      .otherwise
        redirectTo: '/'
