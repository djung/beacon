'use strict'

app = angular.module 'beaconDynamicApp'

app.factory 'MessageModel', (Restangular) ->
    namespace = 'messages'
    service   = Restangular.service(namespace)

    service.create = (id) ->
        if id
            return Restangular.one(namespace, id)
        else
            return Restangular.one(namespace)

    return service