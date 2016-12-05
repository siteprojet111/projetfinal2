class CreateLangues < ActiveRecord::Migration[5.0]
  def change
    create_table :langues do |t|
      t.string :nom_langue
      t.string :niveau

      t.timestamps
    end
  end
end
