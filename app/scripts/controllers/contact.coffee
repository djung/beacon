'use strict'

###*
 # @ngdoc function
 # @name beaconDynamicApp.controller:ContactCtrl
 # @description
 # # ContactCtrl
 # Controller of the beaconDynamicApp
###
app = angular.module 'beaconDynamicApp'
  
app.controller 'ContactCtrl', ($scope, MessageModel) ->
    $scope.message = MessageModel.create()
    
    $scope.submit = () ->
        $scope.error = null
        $scope.confirm = null
        # Frontend validation for existence
        if !$scope.message.email
            $scope.error = 'Email is required'
        else if !$scope.message.message
            $scope.error = 'Message is required'

        if !$scope.error
            $scope.message.save().then(
                (response) ->
                    $scope.error = null
                    $scope.confirm = "Thank you for contacting us."
                (response) ->
                    $scope.error = "We could not send your message. Please try again later."
                    $scope.confirm = null
            )