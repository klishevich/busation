class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :mtype
      t.string :name
      t.string :email
      t.string :phone
      t.text :body

      t.timestamps null: false
    end
  end
end
