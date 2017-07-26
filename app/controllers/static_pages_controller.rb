class StaticPagesController < ApplicationController
  include CurrentVisit
  before_action :set_visit, only: [:home, :contact, :about]

  caches_action :home, :contact, :about

  def home
  end

  def contact
  end

  def about
  end
end
