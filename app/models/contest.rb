class Contest < ActiveRecord::Base
  belongs_to :requester
  has_many :designs

  validates :title, :presence => true
  validates :description, :presence => true
  validates :budget, :presence => true
  validates :deadline, :presence => true

  scope :ongoing_contests, where(:status => false)
  scope :approved_contests, where(:status => true)

end
