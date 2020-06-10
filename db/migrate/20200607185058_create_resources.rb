class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :kind
      t.boolean :for_kids
      t.boolean :approved
      t.string :url
      t.string :title
      t.text :description
      t.string :twitter_link
      t.string :insta_link
      t.string :facebook_link

      t.timestamps
    end
  end
end
