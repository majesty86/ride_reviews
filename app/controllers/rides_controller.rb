class RidesController < ApplicationController
  include SessionHelper

  def index
    @rides = Ride.order(created_at: :desc)
  end

  def new
    @ride = Ride.new

    respond_to do |f|
      f.html
      f.js
    end
    
  end

  def create
    
    respond_to do |f|
      f.html
      f.js
    end

    @ride = Ride.new(ride_params)

    if @ride.save
      render :create
    else
      @errors = @ride.errors.full_messages
      render :new
    end
  end

    private
      def ride_params
        params.require(:ride).permit(:starting_town, :ending_town, :starting_intersection, :ending_intersection, :distance_in_miles, :star_rating, :author_id, :title)
      end

  end