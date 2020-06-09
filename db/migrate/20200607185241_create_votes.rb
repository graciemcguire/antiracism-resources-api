class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :user_id
      t.string :resource_id
      t.string :vote

      t.timestamps
    end
  end
end
