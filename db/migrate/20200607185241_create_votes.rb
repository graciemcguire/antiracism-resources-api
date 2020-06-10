class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :resource_id
      t.string :vote

      t.timestamps
    end
  end
end
