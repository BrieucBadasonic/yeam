class AddFullNameToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :full_name, :string
  end
end
