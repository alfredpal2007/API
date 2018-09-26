class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :usuario
      t.string :reporte
      t.string :foto
      t.string :direccion
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
