class EquipmentController < ApplicationController
  before_action :find_equipment, only: [:show, :edit, :update]
  after_action :equip_facts, only: [:create, :update]

  def index
    @equipment = Equipment.all
  end

  def show
  end

  def new
    @equipment = Equipment.new
    @options = ["therm", "filter", "heater"]
    @aquarium = Aquarium.all.last
  end

  def create
    @equipment = Equipment.create(equipment_params)
    redirect_to new_decor_path
  end

  def edit
    @options = ["therm", "filter", "heater"]
    @aquarium = Aquarium.all.last
  end

  def update
    @equipment.update(equipment_params)
    redirect_to aquarium_path(@equipment)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:item, :aquarium_id)
  end

  def find_equipment
    @equipment = Equipment.find_by(id: params[:id])
  end

  def equip_facts
      @facts = {"therm"=> "really cool bro", "filter" => "yeah this is awesome", "heater" => "keep fishies warm"}
      @equipment.facts = @facts[@equipment.item]
      @equipment.save
  end

end
