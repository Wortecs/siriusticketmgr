{%define "body"%}

	<div style="height: 100%;" layout="row" layout-align="center center" ng-controller="LoginController">

		<div class="md-whiteframe-5dp block" style="width:400px">
			<form method="POST" action="{{loginUrl}}">
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

{%end%}
{%define "script"%}

	<script type="text/javascript">

		blank.controller("LoginController", function($scope){
			$scope.loginUrl = "localhost:8080/"
		})

	</script>

{%end%}