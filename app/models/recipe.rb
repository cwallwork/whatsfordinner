class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients
  after_initialize :init
  validates :name, presence: :true

  def init
    self.viewable = false if self.viewable.nil?
  end
end
