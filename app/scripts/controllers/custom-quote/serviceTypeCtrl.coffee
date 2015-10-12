'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'serviceTypeCtrl', [
    '$scope'
    'functionFactory'
    ($scope, functionFactory) ->
        basket = $scope.basket.items
        $scope.$watch 'formData.viewing', ->
            if $scope.formData.viewing == false
                functionFactory.removeFromBasket $scope, 'viewing_off_hours', 'model'
                functionFactory.removeFromBasket $scope, 'viewing_additional', 'model'
            return
        $scope.$watch 'formData.visitation', ->
            if $scope.formData.visitation == false
                functionFactory.removeFromBasket $scope, 'visitation_off_hours', 'model'
                functionFactory.removeFromBasket $scope, 'visitation_additional', 'model'
            return
        $scope.$watch 'formData.ceremony_service', ->
            if $scope.formData.ceremony_service == false
                functionFactory.removeFromBasket $scope, 'ceremony_service_off_hours', 'model'
                functionFactory.removeFromBasket $scope, 'ceremony_service_additional', 'model'
            return
        return
]