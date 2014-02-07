class Court
  include Mongoid::Document
  field :court_num, type: Integer
  field :booked, type: :Boolean
  has_many :players

  validates :court_num, presence: true, numericality: true, uniqueness: true

end
