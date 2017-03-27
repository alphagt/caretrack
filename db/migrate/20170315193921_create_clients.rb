class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :uid
      t.string :moniker
      t.timestamps
    end
  end
end
