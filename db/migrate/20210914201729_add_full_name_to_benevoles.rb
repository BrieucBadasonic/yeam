class AddFullNameToBenevoles < ActiveRecord::Migration[6.0]
  def change
    add_column :benevoles, :full_name, :string
  end
end
