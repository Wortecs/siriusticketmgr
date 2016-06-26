{%define "body"%}

		<div style="height: 90%;" layout="row" layout-align="center center" ng-controller="NotFoundController" ng-cloak>

			<div class="md-whiteframe-5dp block" style="width:400px">
				
					<md-subheader class="md-no-sticky md-primary">404 Страница не найдена</md-subheader>

					<div class="login-block">

						<div layout="row">
							<div>Простите, мы пытались что-то найти по данному адресу, но нам не удалось</div>
							
							<md-icon md-svg-src="/static/img/404.svg" style="width:48px"></md-icon>
						</div>
						<br>
						
						<div>{{subtext}}</div>
						
						<br>
						<div layout="row" layout-align="end">
						<md-button ng-href="{{loginUrl}}" class="md-primary" target="_self">На главную</md-button>
						</div>
					</div>

				</form>
			</div>	
		
		</div>
		
{%end%}
{%define "script"%}

	<script src="/static/js/handler.js"></script>
	<script type="text/javascript">

		blank.controller("NotFoundController", function($scope){
			$scope.loginUrl = getUrl("login");
			$scope.subtext	= "Возможно ваш системный администратор знает: 0382XXXXXX"
		})

	</script>

{%end%}