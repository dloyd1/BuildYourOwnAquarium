class DecorsController < ApplicationController
  before_action :find_decor, only: [:show, :edit, :update]
  after_action :decor_facts, only: [:create, :update]

  def index

  end

  def show

  end

  def new
    @decor = Decor.new
    @options = ["Mod", "country", "hipster"]
    @aquarium = Aquarium.all.last
  end

  def create
    @decor = Decor.create(decor_params)
    redirect_to aquarium_path(@decor)
  end

  def edit
    @options = ["Mod", "country", "hipster"]
    @aquarium = Aquarium.all.last
  end

  def update
    @decor.update(decor_params)
    redirect_to aquarium_path(@decor)
  end

  private

  def decor_params
    params.require(:decor).permit(:style, :aquarium_id)
  end

  def find_decor
    @decor = Decor.find_by(id: params[:id])
  end

  def decor_facts
    @facts = {"Mod"=> "soo mod", "country" => "yehawww", "hipster" => "fake news"}
    @decor.facts = @facts[@decor.style]
    @decor.save
  end

end
