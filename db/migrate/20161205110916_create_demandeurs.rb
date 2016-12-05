class CreateDemandeurs < ActiveRecord::Migration[5.0]
  def change
    create_table :demandeurs do |t|
      t.string :email
      t.string :code_acces
      t.string :prenom
      t.string :nom
      t.integer :age
      t.string :civilite
      t.string :s_maritale
      t.text :adresse
      t.string :wilaya
      t.string :commune
      t.integer :tel1
      t.integer :tel2
      t.string :permis
      t.string :service_national
      t.text :competence_info

      t.timestamps
    end
  end
end
