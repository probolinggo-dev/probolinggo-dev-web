<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\AppParam;

/**
 * AppParamSearch represents the model behind the search form of `common\models\AppParam`.
 */
class AppParamSearch extends AppParam
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['app_param_id', 'name', 'value', 'updated_at', 'created_at', 'category'], 'safe'],
            [['created_by', 'update_by'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = AppParam::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'updated_at' => $this->updated_at,
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'update_by' => $this->update_by,
        ]);

        $query->andFilterWhere(['like', 'app_param_id', $this->app_param_id])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'value', $this->value])
            ->andFilterWhere(['like', 'category', $this->category]);

        return $dataProvider;
    }
}
