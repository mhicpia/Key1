class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.text :description
      t.string :number
      t.string :facility
      t.string :company
      t.date :checkout
      t.date :checkin

      t.timestamps
    end
  end
end
