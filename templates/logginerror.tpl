{%define "body"%}

<div style="height: 90%;" layout="row" layout-align="center center" ng-controller="IncorrectController" ng-cloak>

    <div class="md-whiteframe-5dp block" style="width:400px">

        <md-subheader class="md-no-sticky md-primary">Некорректные данные пользователя</md-subheader>

        <div class="login-block">

            <div layout="row">
                <div>Неверно введен логин или пароль</div>

                <md-icon md-svg-src="/static/img/404.svg" style="width:48px"></md-icon>
            </div>
            <br>

            <div>{{subtext}}</div>

            <br>
            <div layout="row" layout-align="end">
                <md-button ng-href="{{loginUrl}}" class="md-primary">На главную</md-button>
            </div>
        </div>

        </form>
    </div>

</div>

{%end%} {%define "script"%}

<script type="text/javascript">
    blank.controller("IncorrectController", function($scope) {
        $scope.loginUrl = "https://angularjs.org/"
        $scope.subtext = "Обратитесь к системному администратору: 0382XXXXXX"
    })
</script>

{%end%}