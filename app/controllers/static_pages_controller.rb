class StaticPagesController < ApplicationController
  # rails g controller static_pages landing_page pricing privacy terms
  skip_before_action :authenticate_user!
  before_action :set_meta, only: %i[pricing privacy terms]

  def landing_page; end

  def pricing
    set_meta_tags title: action_name.capitalize
  end

  def privacy
    set_meta_tags title: action_name.capitalize
  end

  def terms
    set_meta_tags title: action_name.capitalize
  end
  
  private

  def set_meta
    set_meta_tags title: action_name.capitalize
  end
end
