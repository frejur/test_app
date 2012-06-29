class CreateTinyposts < ActiveRecord::Migration
  def change
    create_table :tinyposts do |t|
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end
end
