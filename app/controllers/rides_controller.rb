class RidesController < ApplicationController
  include SessionHelper

  def index
    @rides = Ride.order(created_at: :desc)
    @state_list = Ride.filter_states
  end

  def new
    respond_to(:html, :js)
    @ride = Ride.new
    @state_list = state_list
  end

  def create
    respond_to(:html, :js)
    @ride = Ride.new(ride_params)
    @state_list = state_list

    if @ride.save
      render :create
    else
      @errors = @ride.errors.full_messages
      render :new
    end
  end

  def show
    @ride = Ride.find_by(id: params[:id])
    render :show
  end

  def filter_by_state
    @rides = Ride.all.select { |ride| ride.starting_state == params["state"] || ride.ending_state == params["state"] }
    @state_list = Ride.filter_states
  end  

  private
    def ride_params
      params.require(:ride).permit(:starting_city, :starting_state, :ending_city, :ending_state, :starting_address, :ending_address, :distance_in_miles, :star_rating, :author_id, :title)
    end

  end