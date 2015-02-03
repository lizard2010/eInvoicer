# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

eInvoicer = angular.module('eInvoicer', ['ngTable'])

eInvoicer.config ['$logProvider', ($logProvider) ->
  $logProvider.debugEnabled(true)
]
eInvoicer.controller 'TableController', ['$scope',  '$http', 'ngTableParams', ($scope, $http, ngTableParams) ->
  $http.get('./facts.json').success((data) ->
    $scope.tasks = data
    $scope.tableParams = new ngTableParams {
        page: 1,
        count: 10
      }, {
        total: $scope.tasks.length, #// length of data
        getData: ($defer, params) ->
          alert((params.page() - 1) * params.count()+ " - " + params.page() * params.count())
          $defer.resolve($scope.tasks.slice((params.page() - 1) * params.count(), params.page() * params.count()))
          true
      }

    true
  )


]


