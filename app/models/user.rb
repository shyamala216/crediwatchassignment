class User < ApplicationRecord
  enum role: [:user,:manager,:admin]
  before_create :set_default_role
  def set_default_role
    self.role ||=:user
  end
end
