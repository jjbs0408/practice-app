class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text   :content
      t.belongs_to :user
      # t.string :img_url
      t.timestamps
    end
  end
end
