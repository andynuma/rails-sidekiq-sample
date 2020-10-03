class PokemonRemoveWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(*args)
    Pokemon.destroy_all
  end
end
