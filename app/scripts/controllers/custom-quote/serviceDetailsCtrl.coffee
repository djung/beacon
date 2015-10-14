'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'serviceDetailsCtrl', [
    '$scope'
    'functionFactory'
    ($scope, functionFactory) ->
        $scope.$watch 'formData.graveside_committal', ->
            if $scope.formData.graveside_committal == false
                functionFactory.removeFromBasket $scope, 'graveside_committal_off_hours', 'model'
            return
        $scope.$watch 'formData.cremation_witness', ->
            if $scope.formData.cremation_witness == false
                functionFactory.removeFromBasket $scope, 'cremation_witness_off_hours', 'model'
            return
        if $scope.formData.disposition != 'Burial'
            functionFactory.removeFromBasket $scope, 'graveside_committal', 'model'
            functionFactory.removeFromBasket $scope, 'graveside_committal_off_hours', 'model'
        if $scope.formData.disposition != 'Cremation'
            functionFactory.removeFromBasket $scope, 'cremation_witness', 'model'
            functionFactory.removeFromBasket $scope, 'cremation_witness_off_hours', 'model'
        return
]