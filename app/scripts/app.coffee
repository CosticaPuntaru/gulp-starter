'use strict';

require "./states/index.coffee"
require './modules/utils/index.coffee'

bk = angular.module 'bk', [
    #3rd party modules
    'ngAnimate'
    'ngCookies'
    'ngTouch'
    'ngSanitize'
    'restangular'
    'ui.router'
    'debounce'

    #application modules
    'bk.states'
    'bk.utils'
]
bk.config([
    '$urlRouterProvider'
    '$locationProvider'
    ($urlRouterProvider, $locationProvider) ->
        $locationProvider.html5Mode(true).hashPrefix('!')
        $urlRouterProvider.otherwise '/404'
])
bk.run ($rootScope) ->
    $rootScope.$on '$stateChangeError', (event, toState, toParams, fromState, fromParams, error) ->
        console.error error

require './main/main-ctrl.js'