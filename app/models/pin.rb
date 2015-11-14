class Pin < ActiveRecord::Base
  belongs_to :user
  has_many :pinnings
  has_many :boards, through: :pinnings

  validates :title, presence: true
end
