class Work < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy

  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :videos, allow_destroy: true

  validates :title, :description, :year, presence: true
  validates :title, uniqueness: true
  validate :has_cover
  extend FriendlyId
  friendly_id :title, use: :slugged


  def self.ransackable_attributes(auth_object = nil)
    %w[id title description year created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[photos videos]
  end


private

  def has_cover
    unless photos.any? {|photo| photo.cover?} || videos.any? {|video| video.cover?}
      errors.add(:base, "Il faut au moins une photo ou une vidéo de couverture")
    end
  end

end
