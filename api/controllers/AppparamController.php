<?php
namespace api\controllers;

use yii\rest\ActiveController;
use common\models\AppParam;

class AppparamController extends ActiveController
{
    public $modelClass = 'common\models\AppParam';
    public function actions(){
        $actions = parent::actions();
        unset($actions['create']);
        unset($actions['update']);
        unset($actions['delete']);
        return $actions;
    }

}
?>