'use strict'

### Sevices ###

angular.module('app.services', [])

.factory 'Api', ($resource) ->
  planets: $resource '/planets.json'
