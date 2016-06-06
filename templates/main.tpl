{%define "body"%}

<div layout="row" class="bg-main calc">
    <div flex="65">
        <div class=" block height100 md-whiteframe-5dp" ng-controller="tasksContoller" ng-cloak>
            <md-subheader class="md-no-sticky blue-title">Текущие заявки:</md-subheader>
            <div class="bs-component">
                <table class="table table-striped table-hover ">
                    <thead style="background-color: #eeeeee">
                        <tr>
                            <td>Дата подачи</td>
                            <td>Тема</td>
                            <td>Дата выполнения</td>
                            <td>Статус</td>
                            <td>Приоритет</td>

                        </tr>
                    </thead>
                    <tbody>
                        <tr data-toggle="collapse" ng-repeat-start="item in tasks track by $index" data-target="#colapsed{{$index}}" class="clickable collapsed">
                            <td>{{item.datestart}}</td>
                            <td>{{item.theme}}</td>
                            <td>{{item.dateend}}</td>
                            <td>{{item.status}}</td>
                            <td>{{item.priority}}</td>
                        </tr>
                        <tr ng-repeat-end>
                            <td colspan="5">
                                <div layout="column" id="colapsed{{$index}}" class="collapse">
                                    {{item.text}}
                                    <div layout="row" layout-align="end center">
                                        <md-button class="md-primary">Закрыть заявку</md-button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>

                </table>

            </div>

        </div>
    </div>
    <div layout="column" flex="35">

        <div class="block md-whiteframe-5dp" ng-controller="newTaskContoller">
            <md-subheader class="md-no-sticky blue-title">Новая заявка:</md-subheader>

            <md-input-container class="md-block">
                <label>Тема:</label>
                <input ng-model="task.theme" md-maxlength="50">
            </md-input-container>
            <md-input-container class="md-block">
                <label>Содержание:</label>
                <textarea ng-model="task.text" md-maxlength="500" rows="3" md-select-on-focus></textarea>
            </md-input-container>
            <md-input-container class="md-block">
                <label>Отдел:</label>
                <md-select ng-model="task.department">
                    <md-option ng-repeat="item in departments" value="{{item}}">
                        {{item}}
                    </md-option>
                </md-select>
            </md-input-container>
            <div layout="row" layout-align="end center">
                <md-button ng-click="taxTask($event)" class="md-raised md-primary">Подать заявку</md-button>
            </div>
        </div>
        <div class=" block height100 md-whiteframe-5dp" ng-controller="newsContoller" ng-cloak>
            <md-subheader class="md-no-sticky blue-title">Новости:</md-subheader>
            <md-list>
                <md-list-item class="md-3-line" ng-repeat="item in news">
                    <div style="width: 100%;" class="md-list-item-text">
                        <h3>{{item.title}}</h3>
                        <p>{{item.text}}</p>

                        <p align="right">{{item.date}}</p>

                    </div>
                </md-list-item>

            </md-list>

        </div>

    </div>
</div>

{%end%}
{%define "code"%}

blank.controller('newsContoller', function($scope) {
    $scope.news = [{
        title: "1c no work",
        text: "1c not work blablabla",
        date: "01.01.0001 00:00"
    }, {
        title: "1c work",
        text: "1c work blablabla",
        date: "01.01.0001 25:00"
    }]
})




blank.controller('newTaskContoller', function($scope) {
    $scope.departments = ["ІТ Отедел", "Юр отдел"]
})




blank.controller('tasksContoller', function($scope) {
    $scope.tasks = [{
        datestart: "01.01.0001",
        dateend: "01.01.0001",
        status: "На обработке",
        theme: "ЧТо-то там",
        priority: "Низкий",
        text: "Текст запроса"
    }, {
        datestart: "01.01.0001",
        dateend: "01.01.0001",
        status: "На обработке",
        theme: "Еще что-то там",
        priority: "Высокий",
        text: "Текст запроса"
    }]
})
{%end%}