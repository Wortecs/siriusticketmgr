{%define "base"%}

<html>	
	
	<head>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Angular Material style sheet -->
		<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.css">
		<!-- Base style	-->
		<link rel="stylesheet" type="text/css" href="/static/css/main.css">

	</head>

	<body ng-app="mainApp">

		<!-- Toolbar -->
		<div ng-cloak>
			<md-toolbar ng-controller="TitleController" class="title-style">
				<div class="md-toolbar-tools">

					<md-button aria-label="Главная страница" ng-href="{{urls.main}}">
					  Главная
					</md-button>

					<md-button aria-label="Инструкции" ng-href="{{urls.instruction}}">
					  Инструкции
					</md-button>

					<md-button aria-label="Вопросы" ng-href="{{urls.issue}}">
					  Вопросы
					</md-button>

					<span flex></span>

					<md-button class="md-icon-button" aria-label="Профииль" ng-href="{{urls.profile}}">
						<md-icon md-svg-icon="/static/img/profile.svg"></md-icon>
					</md-button>

				</div>
			</md-toolbar>
		</div>

		<!-- Include custom body -->
		{%template "body" .%}
	

		<!-- Angular Material requires Angular.js Libraries -->
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-animate.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-aria.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-messages.min.js"></script>

		<!-- Angular Material Library -->
		<script src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.js"></script>

		<!-- Base titile controller -->
		<script src="/static/js/title.js"></script>

		<!-- Include custom scripts	-->
		{%template "script" .%}
	
	</body>
	
</html>

{%end%}

<!--
Copyright 2016 Google Inc. All Rights Reserved. 
Use of this source code is governed by an MIT-style license that can be in foundin the LICENSE file at http://material.angularjs.org/license.
-->

