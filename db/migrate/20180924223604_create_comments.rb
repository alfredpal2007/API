class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :usuario
      t.string :comentario
      t.references :report, foreign_key: true

      t.timestamps
    end
  end
end
