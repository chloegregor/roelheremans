class Profil < ApplicationRecord


  def self.ransackable_attributes(auth_object = nil)
    %w[id about email pic_url cv_url created_at updated_at]
  end

  def self.instance
    first_or_create!
  end

end
