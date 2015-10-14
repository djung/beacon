'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'dispositionOptionsCtrl', [
    '$scope'
    'functionFactory'
    ($scope, functionFactory) ->
        current = $scope.formData.disposition
        $scope.$watch 'formData.disposition', ->
            if $scope.formData.disposition != 'Cremation'
                functionFactory.removeFromBasket $scope, 'disposition_weight', 'model'
            if current != undefined and current != $scope.formData.disposition
                stored_items = $scope.formData.miscellaneous_items
                if stored_items != undefined
                    angular.forEach stored_items, (item) ->
                        functionFactory.removeFromBasket $scope, item, 'label'
                        return
                delete $scope.formData.miscellaneous_items
            return
        return
]