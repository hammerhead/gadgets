class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :name
      t.string :brand
      t.date :buy_date

      t.timestamps
    end
  end
end
