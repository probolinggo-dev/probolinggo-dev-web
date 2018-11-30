<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\AppParam */

$this->title = 'Create App Param';
$this->params['breadcrumbs'][] = ['label' => 'App Params', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="app-param-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
