class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string, :title
      t.text, :body
      t.string :author_id
      t.string :integer,
      t.integer :id

      t.timestamps
    end
  end
end
