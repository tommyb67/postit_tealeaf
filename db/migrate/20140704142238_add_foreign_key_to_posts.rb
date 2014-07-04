class AddForeignKeyToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.references :user, index: true
    end
  end

  def down
    change_table :posts do |t|
      t.remove :user_id
    end
  end
end
