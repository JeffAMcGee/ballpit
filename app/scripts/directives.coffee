'use strict'

### Directives ###

# register the module with Angular
angular.module('app.directives', [
  # require the 'app.service' module
  'app.services'
])

.directive('fileGrabber', [
  '$location',

  ($location) ->
    restrict: 'A'
    link: ($scope, elem, attrs)->
      console.log 'link'
      elem.on 'change', () ->
        reader = new FileReader()
        files = elem[0].files
        if files.length<0
          return
        reader.readAsDataURL(files[0])
        reader.onload = (event)->
          console.log(event)
          qr= new QrCode()
          # I don't want to call decodeURIComponent
          qr.decode_utf8 = (s) -> s.replace(/[^0-9a-z]/g, '')
          qr.callback = (result) ->
            $scope.$apply ->
              $scope.code = result
              if result.length>=1 and result.length<=3
                $location.path('/planet/'+result)
          qr.decode(event.target.result)
])
