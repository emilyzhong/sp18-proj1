class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new
	end 

	def create
		pokemon = Pokemon.create(pokemon_params)
		pokemon.level = 1
		pokemon.trainer_id = current_trainer.id
		pokemon.health = 100

		if !pokemon.save 
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		else
			redirect_to trainer_path(current_trainer.id)
		end
	end

	def capture
		p = Pokemon.find(params[:id])
		p.update!(trainer_id: current_trainer.id)
		p.save

		redirect_to root_path
	end

	def damage
		p = Pokemon.find(params[:id])
		p.update!(health: p.health - 10)
		p.save
		if p.health <= 0
			p.destroy
		end
		redirect_to trainer_path(current_trainer.id)
	end

	private
		def pokemon_params
    		params.require(:pokemon).permit(:name, :ndex)
  		end
end
