class Portfolio < ApplicationRecord

  # validation of existence of items
  validates_presence_of :title, :body, :main_image, :thumb_image
    

    #two ways of creating custom scopes
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ror_portfolio_items, -> { where(subtitle: 'RoR') }

# defaults after creating object
  after_initialize :set_defaults
# ||= -> if value is nul use this
  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x200"
    self.thumb_image ||= "http://via.placeholder.com/300x150"
  end
end
