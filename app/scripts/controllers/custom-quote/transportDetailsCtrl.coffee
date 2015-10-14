'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'transportDetailsCtrl', [
    '$scope'
    'functionFactory'
    ($scope, functionFactory) ->
        $scope.$watch 'formData.hearse', ->
            if $scope.formData.hearse == false
                functionFactory.removeFromBasket $scope, 'hearse_additional', 'model'
            return
        $scope.$watch 'formData.motorcade', ->
            if $scope.formData.motorcade == false
                functionFactory.removeFromBasket $scope, 'motorcade_additional', 'model'
            return
        $scope.$watch 'formData.limousine', ->
            if $scope.formData.limousine == false
                functionFactory.removeFromBasket $scope, 'limousine_additional', 'model'
            return
        return
]