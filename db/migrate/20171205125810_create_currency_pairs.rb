class CreateCurrencyPairs < ActiveRecord::Migration
  def change
    create_table :currency_pairs do |t|
      t.string :name

      t.timestamps
    end
  end
end
