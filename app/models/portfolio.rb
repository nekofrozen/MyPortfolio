class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  include Placeholder
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '300', width: '150')
    self.thumb_image ||= Placeholder.image_generator(height: '300', width: '150')
  end
end


