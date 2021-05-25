class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :language_id
      t.references :user, null:false, foreign_key:true
      t.timestamps
    end
  end
end
