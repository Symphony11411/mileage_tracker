class Model < ActiveRecord::Base
  belongs_to :make
  has_many :vehicles
  has_many :mileages, :through => :vehicles

  def mymake
    "#{make.name}"
  end

  validates :name, presence:true
end

# == Schema Information
# Schema version: 20110323015520
#
# Table name: models
#
#  id         :integer         not null, primary key
#  make_id    :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

