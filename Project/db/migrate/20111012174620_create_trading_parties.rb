class CreateTradingParties < ActiveRecord::Migration
  def change
    create_table :trading_parties do |t|
      t.string :[name
      t.integer :money
      t.references] :items

      t.timestamps
    end
  end
end
