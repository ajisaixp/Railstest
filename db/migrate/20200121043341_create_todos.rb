class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
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
