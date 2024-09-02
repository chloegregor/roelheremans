class CvCategory < ApplicationRecord
  belongs_to :profil


  def self.ransackable_attributes(auth_object = nil)
    %w[category_title content created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[profil]
  end
end
