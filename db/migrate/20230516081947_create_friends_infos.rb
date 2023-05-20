class CreateFriendsInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :friends_infos do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Contact
      t.string :Email
      t.string :Instagram

      t.timestamps
    end
  end
end
