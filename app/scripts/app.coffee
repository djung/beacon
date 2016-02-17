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

app.constant
    'lambda_config':
        'base_url': 'https://7nwsclvqig.execute-api.us-east-1.amazonaws.com/prod'
        'quote_endpoint': 'quote-email-production'
  
app.config (RestangularProvider, lambda_config) ->
    RestangularProvider.setBaseUrl(lambda_config.base_url)