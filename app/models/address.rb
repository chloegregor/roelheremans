class Address < ApplicationRecord
  belongs_to :profil

  def self.ransackable_attributes(auth_object = nil)
    %w[title street city zip_code country phone_number email website created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[profil]
  end

end
