'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'mainCtrl', [
    '$scope'
    ($scope) ->
        'use strict'
        $scope.basket = items: []
        $scope.formData = {}
        $scope.formData.total = 0
        return
]
