var mhApp = angular.module('mediahaven', ['ngRoute', 'ngResource']);

mhApp.factory('Users', ['$resource', function($resource){
  return $resource('/users.json', {}, {
    query: {method: 'GET', isArray: true},
    create: {method: 'POST'}
  })
}]);

mhApp.factory('Users', ['$resource', function($resource){
  return $resource('/users/:id.json', {}, {
    show: {method: 'GET'},
    update: {method: 'PUT', params: {id: '@id'}},
    delete: {method: 'DELETE', params: {id: '@id'}}
  });
}]);

mhApp.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
  $routeProvider.when('/users', {
    templateUrl: '/templates/users/index.html',
    controller: 'UserAll'
  });
  $routeProvider.otherwise({
    redirectTo: '/users'
  });
}]);

mhApp.controller("UserAll", ['$scope', '$resource', 'Users', 'User', '$location', function($scope, $resource, Users, User, $location){
  $scope.users = Users.query();
}]);