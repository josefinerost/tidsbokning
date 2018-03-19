class StaticPagesController < ApplicationController
  def home
    @events = Event.all
  end

  def contact
    @name =  'Börel'
    @email = 'böreljörge@gmail.com'
    @phone = '1234567'
  end


end
