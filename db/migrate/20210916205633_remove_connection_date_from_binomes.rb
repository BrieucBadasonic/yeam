class RemoveConnectionDateFromBinomes < ActiveRecord::Migration[6.0]
  def change
    remove_column :binomes, :connection_date, :date
  end
end
