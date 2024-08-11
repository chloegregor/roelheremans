class Work < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :videos, dependent: :destroy
  
  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :videos, allow_destroy: true


  def self.ransackable_attributes(auth_object = nil)
    %w[id title description year created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[photos videos]
  end
end
