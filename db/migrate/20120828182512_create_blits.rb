class CreateBlits < ActiveRecord::Migration
  def change
    create_table :blits do |t|
      t.string :user
      t.string :message
      t.datetime :created

      t.timestamps
    end
  end
end
