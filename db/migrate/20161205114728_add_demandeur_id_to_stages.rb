class AddDemandeurIdToStages < ActiveRecord::Migration[5.0]
  def change
    add_column :stages, :demandeur_id, :integer
  end
end
