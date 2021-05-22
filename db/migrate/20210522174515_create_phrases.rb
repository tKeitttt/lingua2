class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.string  :native, null:false
      t.string  :foreignA
      t.string  :foreignB
      t.string  :foreignC
      t.text    :explanation
      t.integer :status_id, null:false
      t.references :user, null:false, foreign_key:true
      t.timestamps
    end
  end
end
