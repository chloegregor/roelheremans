class Profil < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_one :cv, dependent: :destroy
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :cv, allow_destroy: true

    self.table_name = "profil"

  def self.ransackable_attributes(auth_object = nil)
    %w[id about pic_url created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    [:addresses, :cv]
  end
  def self.instance
    first_or_create!
  end


end
