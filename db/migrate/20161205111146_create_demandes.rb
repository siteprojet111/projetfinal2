class CreateDemandes < ActiveRecord::Migration[5.0]
  def change
    create_table :demandes do |t|
      t.string :poste_demande
      t.string :secteur
      t.string :wilaya_demande
      t.string :commune_demande
      t.text :description

      t.timestamps
    end
  end
end
