class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  	@college = College.last
  end

  def accreditation
  	@accreditations = Accreditation.all
  end
end
