class StaticPagesController < ApplicationController
  # rails g controller static_pages landing_page pricing privacy terms
  skip_before_action :authenticate_user!

  def landing_page; end

  def pricing; end

  def privacy; end

  def terms; end
end
