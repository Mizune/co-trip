class CreateQupons < ActiveRecord::Migration
  def change
    create_table :qupons do |t|
      t.string :name
      t.integer :plan_id
      t.date :date
      t.string :image
      t.boolean :quponflag
      t.text :discription

      t.timestamps
    end
  end
end
