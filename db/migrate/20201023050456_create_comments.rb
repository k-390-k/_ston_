class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :recipe_id
      t.string :user_id
      t.text :body

      t.timestamps
    end
  end
end
