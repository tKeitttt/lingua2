class CreatePhraseTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :phrase_tag_relations do |t|
      t.references :phrase, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
