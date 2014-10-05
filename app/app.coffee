'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/planet/:id', {templateUrl: '/partials/planet.html', controller: 'PlanetCtrl'})
    .when('/main', {templateUrl: '/partials/main.html', controller: 'MainCtrl'})
    .when('/codes', {templateUrl: '/partials/codes.html', controller: 'CodesCtrl'})
    .when('/ballpit', {templateUrl: '/partials/ballpit.html', controller: 'BallpitCtrl'})

    # Catch all
    .otherwise({redirectTo: '/main'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])
