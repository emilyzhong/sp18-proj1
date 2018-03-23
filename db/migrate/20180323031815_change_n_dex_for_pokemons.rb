class ChangeNDexForPokemons < ActiveRecord::Migration[5.1]
  def change
  	remove_column :pokemons, :ndex_id
  	add_reference :pokemons, :ndex
  end
end
