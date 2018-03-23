class ChangeNdexAgainForPokemons < ActiveRecord::Migration[5.1]
  def change
  	remove_column :pokemons, :ndex_id
  	remove_column :pokemons, :trainer_id

  	add_reference :pokemons, :trainer, index: true
  	add_column :pokemons, :ndex, :integer
  end
end
