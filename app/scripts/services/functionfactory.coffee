'use strict'

app = angular.module 'beaconDynamicApp'

app.factory 'functionFactory', ->
    object = {}

    object.indexOfObject = (f_array, f_value, f_key) ->
        f_array.reduce (current, value, index) ->
            if value[f_key] == f_value and current == -1
                return index
            current
        , -1
        return

    object.removeFromBasket = (scope, f_value, f_key) ->
        index_now = scope.basket.items.map((each) ->
            each[f_key]
        ).indexOf(f_value)
        if index_now != -1
            scope.formData.total -= parseInt(scope.basket.items[index_now].price)
            scope.basket.items.splice index_now, 1
            delete scope.formData[f_value]
        return

    object.filterData = (f_array, f_value, f_key) ->
        $.map f_array, (val) ->
            if val[f_key] == f_value
                return val
            return
        return

    object