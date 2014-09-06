class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :beer_type
      t.float :abv
      t.integer :ibu
    end
  end
end
