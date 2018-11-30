<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\AppParamSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'App Params';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="app-param-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create App Param', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'app_param_id',
            'name',
            'value:ntext',
            'updated_at',
            'created_at',
            //'created_by',
            //'update_by',
            'category',
            'format_data',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
