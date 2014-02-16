class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :title
      t.string :adress
      t.string :phone
      t.text :description
      t.references :catering, index: true

      t.timestamps
    end
  end
end
