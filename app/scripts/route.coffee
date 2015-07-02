'use strict'

app = angular.module 'beaconDynamicApp'

app.config ($stateProvider, $urlRouterProvider) ->
    # default
    $urlRouterProvider.otherwise('/')

    # app
    $stateProvider
        .state 'app',
            views:
                'header@':
                    templateUrl: "views/includes/header.html"
                    controller: 'HeaderCtrl'
                'footer@':
                    templateUrl: 'views/includes/footer.html'
            abstract: true

    $stateProvider
        .state 'app.homepage',
            url: '/'
            views:
                'content@':
                    templateUrl: 'views/main.html'
                    controller: 'MainCtrl'
    $stateProvider
        .state 'app.about',
            url: '/about'
            views:
                'content@':
                    templateUrl: 'views/about.html'
                    controller: 'AboutCtrl'

    $stateProvider
        .state 'app.services',
            abstract: true

    $stateProvider
        .state 'app.services.burial-packages',
            url: '/burial-packages'
            views:
                'content@':
                    templateUrl: 'views/burial-packages.html'

    $stateProvider
        .state 'app.services.cremation-packages',
            url: '/cremation-packages'
            views:
                'content@':
                    templateUrl: 'views/cremation-packages.html'

    $stateProvider
        .state 'app.services.general-price-list',
            url: '/general-price-list'
            views:
                'content@':
                    templateUrl: 'views/general-price-list.html'

    $stateProvider
        .state 'app.services.custom-quote',
            url: '/custom-quote'
            views:
                'content@':
                    templateUrl: 'views/custom-quote.html'

    $stateProvider
        .state 'app.contact',
            url: '/contact'
            views:
                'content@':
                    templateUrl: 'views/contact.html'
                    controller: 'ContactCtrl'

    $stateProvider
        .state 'app.healthy-living',
            url: '/healthy-living'
            views:
                'content@':
                    templateUrl: 'views/healthy-living.html'