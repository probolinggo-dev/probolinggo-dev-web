<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\AppParam */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'App Params', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="app-param-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->app_param_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->app_param_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'app_param_id',
            'name',
            'value:ntext',
            'updated_at',
            'created_at',
            'created_by',
            'update_by',
            'category',
            'format_data'
        ],
    ]) ?>

</div>
