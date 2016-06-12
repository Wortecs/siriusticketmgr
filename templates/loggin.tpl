{%define "base"%}
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Angular Material style sheet -->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/css/ripples.min.css">
    <link rel="stylesheet" type="text/css" href="/static/main.css">
</head>
<body ng-app="mainApp" ng-cloak>
	<div style="height: 100%;" layout="row" layout-align="center center">

		<div class="md-whiteframe-5dp block" style="width:400px">
			<form method="POST" action="{% .LoginAddress %}">
				<md-subheader class="md-no-sticky md-primary">Авторизация</md-subheader>
				<div class="login-block">
					<md-input-container class="md-block">
						<label>Логин:</label>
						<input required name="loggin" ng-model="user.login" md-maxlength="50">
					</md-input-container>
					<md-input-container class="md-block">
						<label>Пароль:</label>
						<input required name="password" type="password" ng-model="user.pasword" md-maxlength="50">
					</md-input-container>
					<div layout="row" layout-align="end center">
						<md-button type="submit" class="md-raised md-primary" style="float: right;">Вход</md-button>
					</div>
				</div>
			</form>
		</div>

	</div>
  <!-- Angular Material requires Angular.js Libraries -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-animate.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-aria.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-messages.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Angular Material Library -->
    <script src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.js"></script>
    <!-- Your application bootstrap  -->
    <script type="text/javascript">
        var blank = angular.module('mainApp', ['ngMaterial']);
    </script>

</body>

</html>
{%end%}
