class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def soldout?
    quantity == 0
  end

  def logged_in?
    session[:user_id].present?
  end
end
