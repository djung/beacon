'use strict'

app = angular.module 'beaconDynamicApp'

app.factory 'QuoteModel', (Restangular) ->
    namespace = 'quotes'
    service   = Restangular.service(namespace)

    service.create = (id) ->
        if id
            return Restangular.one(namespace, id)
        else
            return Restangular.one(namespace)

    return service