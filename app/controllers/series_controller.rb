class SeriesController < ApplicationController
  before_action :search_params, only: [:index, :show, :pesquisa]
  Tmdb::Api.key(ENV["tmdb_api_key"])
  # Tmdb::Api.language("pt-BR")

  def index
    unless params[:search]
      @series = Tmdb::TV.popular.first(6)
      @top_rated = Tmdb::TV.top_rated.first(6)
    end
  end

  def show
    @serie = Tmdb::TV.detail(params[:tmdb_id]) # Informações principais da série
    @network = @serie['networks'] == [] ? 'Não disponível' : @serie['networks'][0]['name'] # Emissora
    @cast = Tmdb::TV.cast(params[:tmdb_id])

    @number_of_seasons = @serie['number_of_seasons']
    @number_of_episodes = @serie['number_of_episodes']

    @season = Tmdb::Season.detail(params[:tmdb_id], @number_of_seasons)['episodes']

    @teste = []
    @tudo = []

    @number_of_seasons.times do |s|
      @seasons = Tmdb::Season.detail(params[:tmdb_id], s+1)
      @seasons = @seasons['episodes']
      @seasons.each do |s|
        @episode_name = s['name']
        @teste = @teste.push(@episode_name)
        @tudo = @tudo.push(s)
      end
    end
  end

  def pesquisa
  end

  def season(id, s)
    s.times do |s|
      Tmdb::Season.detail(id, s)
    end
  end

  private

  def search_params
    if params[:search]
      @search = params[:search]
      @series = Tmdb::TV.find(@search)
    end
  end
end
