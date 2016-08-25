
app = angular.module('Interviewerapp', [])
app.controller 'skillsetcontroller', ($scope) ->
  $scope.skills = ''
  $scope.myfunction = ->
    if $scope.skills == ''
      alert 'Enter Skills Field'
    else
      alert 'Do you want to save:' + $scope.skills
    return

return
