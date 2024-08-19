class Cv < ApplicationRecord
  belongs_to :profil

  self.table_name = "cv"


  def self.ransackable_attributes(auth_object = nil)
    %w[exhibitions personalia education grant_and_prizes residencies permanent_installations hosting teaching membership scientific created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[profil]
  end
end
