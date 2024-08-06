class Photo < ApplicationRecord
  belongs_to :work


  def self.ransackable_attributes(auth_object = nil)
    %w[url legend created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[work]
  end
end
