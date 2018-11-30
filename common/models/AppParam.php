<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "app_param".
 *
 * @property string $app_param_id
 * @property string $name
 * @property string $value
 * @property string $updated_at
 * @property string $created_at
 * @property int $created_by
 * @property int $update_by
 * @property string $category C=Config,M=print,I=Information
 */
class AppParam extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'app_param';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['app_param_id'], 'required'],
            [['value','format_data'], 'string'],
            [['updated_at', 'created_at'], 'safe'],
            [['created_by', 'update_by'], 'integer'],
            [['app_param_id', 'category','format_data'], 'string', 'max' => 32],
            [['name'], 'string', 'max' => 100],
            [['app_param_id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'app_param_id' => 'App Param ID',
            'name' => 'Name',
            'value' => 'Value',
            'updated_at' => 'Updated At',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'update_by' => 'Update By',
            'category' => 'Category',
        ];
    }
}
