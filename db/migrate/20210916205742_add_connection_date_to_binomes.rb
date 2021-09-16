class AddConnectionDateToBinomes < ActiveRecord::Migration[6.0]
  def change
    add_column :binomes, :connection_date, :string
  end
end
