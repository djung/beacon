'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'totalCtrl', [
    '$scope'
    ($scope) ->
# function to process the form

        $scope.processForm = ->
            alert 'send!'
            return

        return
]