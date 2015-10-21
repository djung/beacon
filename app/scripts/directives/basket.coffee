'use strict'

app = angular.module 'beaconDynamicApp'

app.directive 'toggleBasket', ->
    {
    restrict: 'A'
    require: 'ngModel'
    link: (scope, element, attr, ngModel) ->
        element.bind 'change', ->
        # Safari & IE Fix
            setTimeout (->
        # Apply after(Fix) ngModel.$render
                scope.$apply ->
                    modelValue = ngModel.$modelValue
                    basket = scope.basket
                    #var index = basket.items.map(function (e) {
                    #    return e.model;
                    #}).indexOf(attr.name);

                    indexOfObject = (array, value, key) ->
                        array.map((each) ->
                            each[key]
                        ).indexOf value

                    index = indexOfObject(basket.items, attr.name, 'model')
                    item =
                        model: ngModel.$name
                        label: attr.toggleBasket
                        price: attr.price
                    if modelValue
                        switch attr.type
                            when 'checkbox'
                                basket.items.push item
                                scope.formData.total += parseInt(attr.price)
                            when 'radio'
                                if index != -1
                                    scope.formData.total -= parseInt(basket.items[index].price)
                                    basket.items.splice index, 1
                                scope.formData.total += parseInt(attr.price)
                                basket.items.push item
                            when 'number'
                                item =
                                    model: attr.id
                                    label: attr.toggleBasket
                                    price: attr.price * ngModel.$modelValue
                                if index != -1
                                    scope.formData.total -= parseInt(basket.items[index].price)
                                    basket.items.splice index, 1
                                basket.items.push item
                                scope.formData.total += parseInt(attr.price) * ngModel.$modelValue
                    else
                        switch attr.type
                            when 'checkbox'
                                scope.formData.total -= parseInt(attr.price)
                            when 'number'
                                if index != -1
                                    scope.formData.total -= parseInt(basket.items[index].price)
                        # Remove from basket array
                        if index != -1
                            basket.items.splice index, 1
                        # Remove from formData object
                        delete scope.formData[ngModel.$name]
                    return
                return
            ), 1
            return
        return

    }