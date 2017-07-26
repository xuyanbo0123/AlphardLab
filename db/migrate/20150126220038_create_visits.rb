class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :uuid
      t.string :ip
      t.string :browser
      t.string :device

      t.timestamps null: false
    end
  end
end
