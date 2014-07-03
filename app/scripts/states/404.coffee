'use strict'

notFoundState = angular.module 'bk.states.404', []

notFoundState.config ($stateProvider) ->
    $stateProvider.state '404',
        url: '/404'
        parent: 'default'
        views:
            header:
                templateUrl: '/partials/partials/header.html'
            content:
                templateUrl: '/partials/states/404.html'
        data:
            pageTitle: "404 <strong>Page not found</strong>"
            meta:
                title: 'Sorry, pardner, your page is nowhere to be found'
                keywords: 'casino, NextCasino, 404, page not found'
                description: 'We could not find the page you were looking for...'
                ogImage: '[SITE_DOMAIN]/img/bg-error.jpg'
            breadcrumb:
                label: "Page not found"