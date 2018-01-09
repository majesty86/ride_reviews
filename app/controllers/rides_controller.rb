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

    @state_list = ['AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VA', 'VT', 'WA', 'WI', 'WV', 'WY']
    
  end

  def create
    
    respond_to do |f|
      f.html
      f.js
    end

    @ride = Ride.new(ride_params)
    @state_list = ['AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DC', 'DE', 'FL', 'GA', 'HI', 'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'MA', 'MD', 'ME', 'MI', 'MN', 'MO', 'MS', 'MT', 'NC', 'ND', 'NE', 'NH', 'NJ', 'NM', 'NV', 'NY', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VA', 'VT', 'WA', 'WI', 'WV', 'WY']

    if @ride.save
      render :create
    else
      @errors = @ride.errors.full_messages
      render :new
    end
  end

    private
      def ride_params
        params.require(:ride).permit(:starting_city, :starting_state, :ending_city, :ending_state, :starting_address, :ending_address, :distance_in_miles, :star_rating, :author_id, :title)
      end

  end