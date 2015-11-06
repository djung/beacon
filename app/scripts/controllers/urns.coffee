'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'UrnsCtrl', [
    '$scope'
    '$http'
    'functionFactory'
    ($scope, $http, functionFactory) ->
        select = 'cremation'
        if select != undefined
            select = select.toLowerCase()
            $http.get('resources/' + select + '.json').success (data) ->
                $scope.dataMerch = data
                return
        $scope.$watch 'filterCasketType', ->
            if $scope.filterCasketType
                materials = $scope.dataMerch.filters.materials
                filtered = functionFactory.filterData($scope.dataMerch.items, $scope.filterCasketType, 'type')
                available_materials = []
                i = 0
                while filtered.length > i
                    if available_materials.indexOf(filtered[i].material) == -1
                        available_materials.push filtered[i].material
                    i++
                materials = available_materials
                $scope.ffMaterials = materials
            else
                $scope.ffMaterials = []
                $scope.filterCasketMaterials = ''
                $scope.ffFinish = []
                $scope.filterCasketFinish = ''
                $scope.ffInterior = []
                $scope.filterCasketInterior = ''
            return
        $scope.$watch 'filterCasketMaterials', ->
            if $scope.filterCasketMaterials
                finish = $scope.dataMerch.filters.finish
                filtered = functionFactory.filterData($scope.dataMerch.items, $scope.filterCasketMaterials, 'material')
                available_finish = []
                i = 0
                while filtered.length > i
                    if available_finish.indexOf(filtered[i].finish) == -1
                        available_finish.push filtered[i].finish
                    i++
                finish = available_finish
                $scope.ffFinish = finish
            else
                $scope.ffFinish = []
                $scope.filterCasketFinish = ''
                $scope.ffInterior = []
                $scope.filterCasketInterior = ''
            return
        $scope.$watch 'filterCasketFinish', ->
            if $scope.filterCasketFinish
                interior = $scope.dataMerch.filters.interior
                filtered = functionFactory.filterData($scope.dataMerch.items, $scope.filterCasketFinish, 'finish')
                available_interior = []
                i = 0
                while filtered.length > i
                    if available_interior.indexOf(filtered[i].interior) == -1
                        available_interior.push filtered[i].interior
                    i++
                interior = available_interior
                $scope.ffInterior = interior
            else
                $scope.ffInterior = []
                $scope.filterCasketInterior = ''
            return
        return
]