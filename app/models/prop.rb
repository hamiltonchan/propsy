class Prop
  include Mongoid::Document
  include Mongoid::Timestamps

  field :author, type: String
  field :recipient, type: String
  field :reason, type: String

  validates :author, presence: true
  validates :recipient, presence: true
  validates :reason, presence: true

end
