{%define "base"%}
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Angular Material style sheet -->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.1/bootstrap-material-design.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.material-design/0.5.9/css/ripples.min.css">
    <link rel="stylesheet" type="text/css" href="/static/main.css">
</head>

<body ng-app="mainApp" ng-cloak>


    <div ng-cloak>

		<md-toolbar>
		<div class="md-toolbar-tools">
				{% if .IsAdmin %}
					<md-button >
						Администрирование
					</md-button>
				{% end %}

				{% if .IsSuperior %}
					<md-button >
						Отчеты
					</md-button>
				{% end %}

				<span flex></span>

				<md-button class="md-icon-button" ng-href="{% .Link %}" target="_self">
				  <md-icon  md-svg-icon="/static/img/home.svg"></md-icon>
				</md-button>

				<md-button class="md-icon-button">
				  <md-icon md-svg-icon="/static/img/profile.svg"></md-icon>
				</md-button>
	
		</div>
		</md-toolbar>
	</div>

	{%template "body" .%}

	<!--CODE HERE-->
    <!-- Angular Material requires Angular.js Libraries -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-animate.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-aria.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular-messages.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Angular Material Library -->
    <script src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc2/angular-material.min.js"></script>
    <!-- Your application bootstrap  -->
    <script type="text/javascript">
        var blank = angular.module('mainApp', ['ngMaterial']);

		{%template "code" .%}

    </script>

</body>

</html>
{%end%}
<!--
	Copyright 2016 Google Inc. All Rights Reserved.
	Use of this source code is governed by an MIT-style license that can be in foundin the LICENSE file at http://material.angularjs.org/license.
	-->