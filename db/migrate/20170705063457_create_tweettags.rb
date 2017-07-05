class CreateTweettags < ActiveRecord::Migration[5.1]
  def change
    create_table :tweettags do |t|
      t.references :tweet, foreign_key: true, null: false
      t.references :tag, foreign_key: true, null: false

      t.timestamps
    end
  end
end
