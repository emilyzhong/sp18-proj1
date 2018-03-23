class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.integer :trainer_id
      t.references :ndex, index: true
      t.timestamps
    end
  end
end
