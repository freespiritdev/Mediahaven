var mApp = angular.module('mediahaven', ['ngRoute', 'ngResource']);

mApp.factory('Users', ['$resource', function($resource){
  return $resource('/users.json', {}, {
    query: {method: 'GET', isArray: true},
    create: {method: 'POST'}
  })
}]);

mApp.factory('Users', ['$resource', function($resource){
  return $resource('/users/:id.json', {}, {
    show: {method: 'GET'},
    update: {method: 'PUT', params: {id: '@id'}},
    delete: {method: 'DELETE', params: {id: '@id'}}
  });
}]);

mApp.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
  $routeProvider.when('/users', {
    templateUrl: '/templates/users/index.html',
    controller: 'UserAll'
  });
  $routeProvider.otherwise({
    redirectTo: '/users'
  });
}]);

mApp.controller("UserAll", ['$scope', '$resource', 'Users', 'User', '$location', function($scope, $resource, Users, User, $location){
  $scope.users = Users.query();
}]);