class Video < ApplicationRecord
  belongs_to :work
  validates :url, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[url cover created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[work]
  end

  def youtube_id
    url.split("=").last
  end
end
