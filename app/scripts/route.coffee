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
        .state 'app.services.quote',
            url: '/quote'
            views:
                'content@':
                    templateUrl: 'views/custom-quote.html'
    $stateProvider
        .state 'app.services.custom-quote',
            abstract: true
            url: '/custom-quote'
            views:
                'content@':
                    templateUrl: 'views/custom-quote/form.html'
                    controller: 'formCtrl'

    $stateProvider
        .state 'app.services.custom-quote.indeclinable-charges',
            url: '/indeclinable-charges'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/indeclinable-charges.html'
                    controller: 'indeclinableChargesCtrl'

    $stateProvider
        .state 'app.services.custom-quote.removal-charges',
            url: '/removal-charges'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/removal-charges.html'
                    controller: 'removalChargesCtrl'

    $stateProvider
        .state 'app.services.custom-quote.preservation-options',
            url: '/preservation-options'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/preservation-options.html'
                    controller: 'preservationOptionsCtrl'

    $stateProvider
        .state 'app.services.custom-quote.disposition-options',
            url: '/disposition-options'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/disposition-options.html'
                    controller: 'dispositionOptionsCtrl'

    $stateProvider
        .state 'app.services.custom-quote.other-care-preparations',
            url: '/other-care-preparations'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/other-care-preparations.html'
                    controller: 'otherCarePreparationsCtrl'

    $stateProvider
        .state 'app.services.custom-quote.service-type',
            url: '/service-type'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/service-type.html'
                    controller: 'serviceTypeCtrl'

    $stateProvider
        .state 'app.services.custom-quote.service-details',
            url: '/service-details'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/service-details.html'
                    controller: 'serviceDetailsCtrl'

    $stateProvider
        .state 'app.services.custom-quote.transport-details',
            url: '/transport-details'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/transport-details.html'
                    controller: 'transportDetailsCtrl'

    $stateProvider
        .state 'app.services.custom-quote.miscellaneous',
            url: '/miscellaneous'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/miscellaneous.html'
                    controller: 'miscellaneousCtrl'

    $stateProvider
        .state 'app.services.custom-quote.total',
            url: '/total'
            views:
                'custom-quote':
                    templateUrl: 'views/custom-quote/total.html'
                    controller: 'totalCtrl'

    $stateProvider
        .state 'app.merchandise',
            url: '/merchandise'
            views:
                'content@':
                    templateUrl: 'views/merchandise.html'
                    controller: 'MerchandiseCtrl'

    $stateProvider
        .state 'app.contact',
            url: '/contact'
            views:
                'content@':
                    templateUrl: 'views/contact.html'
                    controller: 'ContactCtrl'