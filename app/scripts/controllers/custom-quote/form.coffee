'use strict'

app = angular.module 'beaconDynamicApp'

app.controller 'formCtrl', ($scope, QuoteModel) ->
        'use strict'
        $scope.basket = items: []
        $scope.formData = {}
        $scope.formData.total = 0

        $scope.quote = QuoteModel.create()

        $scope.processForm = () ->

            $scope.error = null
            $scope.confirm = null
            # Frontend validation for existence
            if !$scope.formData.name
                $scope.error = 'Name is required'
            else if !$scope.formData.email
                $scope.error = 'Email is required'
            else if !$scope.formData.phone
                $scope.error = 'Phone is required'

            if !$scope.error
                $scope.quote.name = $scope.formData.name
                $scope.quote.email = $scope.formData.email
                $scope.quote.phone = $scope.formData.phone
                $scope.quote.total = $scope.formData.total
                $scope.quote.items = []
                for item in $scope.basket.items
                    $scope.item = {}
                    $scope.item['label'] = item['label']
                    $scope.item['price'] = "#{item['price']}"
                    $scope.quote.items.push $scope.item

                $scope.quote.save().then(
                    (response) ->
                        $scope.error = null
                        $scope.confirm = "Thank you for contacting us."
                    (response) ->
                        $scope.error = "We could not send your message. Please try again later."
                        $scope.confirm = null
                )
        return
