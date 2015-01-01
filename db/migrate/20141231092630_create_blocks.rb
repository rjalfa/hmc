class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :title
      t.references :post, index: true

      t.timestamps
    end
  end
end
