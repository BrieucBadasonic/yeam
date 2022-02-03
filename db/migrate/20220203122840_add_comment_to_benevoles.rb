class AddCommentToBenevoles < ActiveRecord::Migration[6.0]
  def change
    add_column :benevoles, :comment, :text
  end
end
