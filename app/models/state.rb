# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  pet_id     :integer
#  codigo     :string
#  estado     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class State < ApplicationRecord
  belongs_to :pet
end
