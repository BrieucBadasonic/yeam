class CreateBinomes < ActiveRecord::Migration[6.0]
  def change
    create_table :binomes do |t|
      t.string :request_status
      t.string :to_do
      t.string :status
      t.date :connection_date
      t.references :user, null: false, foreign_key: true
      t.references :benevole, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
