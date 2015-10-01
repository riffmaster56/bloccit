class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      # t.integer :post_id
      # t.integer :user_id
      t.references :post
      t.references :user

      t.timestamps null: false
    end
  end
end
