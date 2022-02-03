class AddCommentToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :comment, :text
  end
end
