class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients
  after_initialize :init

  def init
    self.viewable = false if self.viewable.nil?
  end
end
