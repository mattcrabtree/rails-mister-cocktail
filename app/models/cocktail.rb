class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, :dependent => :restrict_with_error

  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
