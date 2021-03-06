class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.date :date
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :benevole, null: false, foreign_key: true
      t.references :binome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
