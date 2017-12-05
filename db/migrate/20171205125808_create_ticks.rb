class CreateTicks < ActiveRecord::Migration
  def change
    create_table :ticks do |t|
      t.date :date
      t.string :rate
      t.references :currency_pair, index: true

      t.timestamps
    end
  end
end
