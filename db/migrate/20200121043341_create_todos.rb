class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|

      # 設定できるもの
      # string     : 文字列
      # text       : 長い文字列
      # integer    : 整数
      # float      : 浮動小数
      # decimal    : 倍精度小数
      # datetime   : 日時
      # timestamp  : タイムスタンプ
      # timestamps : created_at, updated_at
      # time       : 時間
      # date       : 日付
      # binary     : バイナリデータ
      # boolean    : Boolean

      #titleにNOT NULL制約を付与。
      t.string :title, null: false
      t.text :description
      # statusにNOT NULL制約を付与、さらに初期値0が登録されるようにする。
      t.integer :status, null: false, default: 0
      t.datetime :estimatedDate

      t.timestamps
    end
  end
end
