{%define "body"%}

<div layout="row" layout-align="center start" >
		<div class="block md-whiteframe-5dp" style="margin-left:5%" flex="70" ng-controller="taskController">
			<md-subheader class="md-primary ">Текущие заявки:

			</md-subheader>

			<md-content  class="list" >
				<section >

					<table class="table table-striped table-hover" style="font-size:1em !important">
                     
						   <tr >
						
                            <td>Дата подачи</td>
                            <td>Тема</td>
                            <td>Дата выполнения</td>
                            <td>Статус</td>
                            <td>Приоритет</td>
							<td>Тип</td>
						
                        </tr>
						
						<tr ng-repeat="item in tasks" >
                            <td style="vertical-align: middle">{{item.startDate}}</td>
                            <td style="vertical-align: middle">{{item.theme}}</td>
                            <td style="vertical-align: middle">{{item.endDate}}</td>
                            <td style="vertical-align: middle">{{item.status | makeStatus}}</td>
                            <td style="vertical-align: middle">{{item.priority | makePriority}}</td>
							<td style="vertical-align: middle">{{item.type | makeType}}</td>
<!--
							<td>
								<md-button style="font-size:0.9em !important; margin:0px !important;" class="md-primary" >закрыть</md-button>
							</td>
-->
                        </tr>

					</table>

				</section>
			</md-content>

		</div>

		<div class="block md-whiteframe-5dp" style="margin-right:5%" flex="30" ng-controller="newsController">
			<md-subheader class="md-primary ">Новости:</md-subheader>

			<md-content  class="list"  >
				<selection>

					<md-list style="height: 1% !important">
						<md-list-item class="md-3-line md-long-text" ng-repeat="item in news"    >
						
						  	<div class="md-list-item-text"  style="width:100% !important"   >
								<h3>{{ item.theme }}</h3>

								<p >{{ item.text }}</p>

								<p align="right" >{{ item.date }}</p>
						  	</div>
						
						</md-list-item>
						

					</md-list>

				</selection>
			</md-content>

		</div>
	
	</div>	

{%end%}
{%define "code"%}
 var blank = angular.module('mainApp', ['ngMaterial']);
		blank.controller("taskController", function($scope){
			$scope.tasks = [ {}
				
			]
		})

		blank.controller("newsController", function($scope){
			$scope.news = []
		})

		
		blank.filter('makePriority', function () {
			  return function (item) {
				  switch(item){
					  case 1: return "Низкий"
					  case 2: return "Средний"
					  case 3: return "Высокий"
				  }

			  }
		})
		blank.filter('makeStatus', function () {
			  return function (item) {
				  switch(item){
					  case 1: return "Новая"
					  case 2: return "Обрабатывается"
					  case 3: return "Выполняется"
					  case 4: return "На проверке"
					  case 5: return "Выполнена"
					  case 6: return "Закрыта"
				  }

			  }
		})
		blank.filter('makeType', function () {
			  return function (item) {
				  switch(item){
					  case 1: return "Ошибка"
					  case 2: return "Инцидент"
					  case 3: return "Обращение"

				  }

			  }
		})

		class News{
			constructor(theme,text,date){
				this.theme = theme;
				this.text = text;
				this.date = date;
			}
		}
		
		class Task{
			constructor(theme, endDate, startDate, status, priority, type){
				this.theme = theme;
				this.endDate = endDate;
				this.startDate = startDate;
				this.status = status;
				this.priority = priority;
				this.type = type;
			}
		}
{%end%}