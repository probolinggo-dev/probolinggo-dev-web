<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\AppParam */

$this->title = 'Update App Param: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'App Params', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->app_param_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="app-param-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
