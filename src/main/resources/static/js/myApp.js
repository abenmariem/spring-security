
var myApp = angular.module("myApp",[]);


myApp.controller("ListEmployeesController", function($scope, $http) {
	
	$scope.pageEmployees = null;
	$scope.currentPage = 0;
	$scope.size = 5;
	
	
	$scope.listEmployees = function(){
		$http.get("employees?page="+$scope.currentPage + "&size="+$scope.size)
		.success(function(data){
			
			$scope.pageEmployees = data;
			
		});
		
	};
	
	$scope.listEmployees();	
	
});


myApp.controller("InscriptionController", function($scope, $http) {
	$scope.employee = {};
	$scope.errors = null;
	$scope.mode={value:"form"};
	
	$scope.exception = {message:null};
	
	
	$scope.saveEmployee = function(){
		$http.post("saveEmployee",$scope.employee)
		
		.success(function(data) {
			
			if(! data.errors){
				$scope.employee = data;
				$scope.errors = null;
				$scope.mode.value="confirm";
			}
			else{
				$scope.errors = data;
				//$scope.employee = null;
				$scope.mode.value="form";
			}
			
		})
		.error(function(data) {
			$scope.exception.message = data.message;
		});
		
	};
	
});


myApp.controller("IndexController", function($scope, $http) {
	
	$scope.menu = ["Subscription", "List", "Users", "Logout"];
	$scope.selectedMenu = null;
	
	$scope.select = function(m){
		$scope.selectedMenu = m;
		
		if()
		
		
		
	};
	
	
});


