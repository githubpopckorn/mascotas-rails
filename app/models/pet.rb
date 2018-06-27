# == Schema Information
#
# Table name: pets
#
#  id                 :integer          not null, primary key
#  name               :string
#  price              :decimal(15, 10)
#  tipo               :string
#  sexo               :string
#  observaciones      :text
#  estado             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Pet < ApplicationRecord

  searchkick

  has_many :states
  has_one :adoption

  scope :libres, -> { where(estado: "libre") }
  scope :adoptadas, -> { where(estado: "adoptada") }

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
