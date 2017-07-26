class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :content

      t.integer :visit_id

      t.timestamps null: false
    end

    add_index :messages, :visit_id
  end
end
