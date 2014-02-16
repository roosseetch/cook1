class CreateCaterings < ActiveRecord::Migration
  def change
    create_table :caterings do |t|
      t.string :title
      t.string :adress
      t.string :phone
      t.string :email
      t.text :work_time
      t.decimal :minimum_order
      t.decimal :delivery_price
      t.text :description

      t.timestamps
    end
  end
end
