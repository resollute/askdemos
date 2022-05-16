class StaticPagesController < ApplicationController
  # rails g controller static_pages landing_page pricing privacy terms
  skip_before_action :authenticate_user!

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
end
