class Portfolio < ApplicationRecord

  # validation of existence of items
  validates_presence_of :title, :body, :main_image, :thumb_image
    

    #two ways of creating custom scopes
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ror_portfolio_items, -> { where(subtitle: 'RoR') }
end
