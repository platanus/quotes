class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :quotes_tags, id: false do |t|
      t.references :tag
      t.references :quote
    end
  end
end
