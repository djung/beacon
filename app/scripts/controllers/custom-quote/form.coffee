'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'formCtrl', [
    '$scope'
    ($scope) ->
        'use strict'
        $scope.basket = items: []
        $scope.formData = {}
        $scope.formData.total = 0

        return
]
