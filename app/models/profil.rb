class Profil < ApplicationRecord
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses, allow_destroy: true

  def self.ransackable_attributes(auth_object = nil)
    %w[id about pic_url cv_url created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    [:addresses]
  end
  def self.instance
    first_or_create!
  end

end
