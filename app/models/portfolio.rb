class Portfolio < ApplicationRecord
  include Placeholder
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
    self.main_image ||= Placeholder.image_generator(height: '600', width: '300')
    self.thumb_image ||= Placeholder.image_generator(height: '300', width: '150')
  end
end
