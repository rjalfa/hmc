class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.references :block, index: true
      t.references :user, index: true

      t.timestamps
    end
    add_index :comments, [:user_id, :created_at]
  end
end
