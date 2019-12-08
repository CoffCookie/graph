class CreateRains < ActiveRecord::Migration[6.0]
  def change
    create_table :rains do |t|
      t.string :month
      t.integer :quantity

      t.timestamps
    end
  end
end
