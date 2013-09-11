class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :phrase

      t.timestamps
    end
  end
end
