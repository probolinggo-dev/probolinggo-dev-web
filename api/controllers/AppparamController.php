<?php
namespace api\controllers;

use yii\rest\ActiveController;
use common\models\AppParam;

class AppparamController extends ActiveController
{
    public $modelClass = 'common\models\AppParam';


    public function actions()
    {

        $actions = parent::actions();
        unset($actions['view']);
        return $actions;

    }

    public function actionView($id)
    {
            return AppParam::findOne($id);
            throw new HttpException(404);
    }

    }
?>