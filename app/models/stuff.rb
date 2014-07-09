class Stuff
  include Mongoid::Document
  embeds_many :sub_stuffs, inverse_of: 'stuff'
  accepts_nested_attributes_for :sub_stuffs, allow_destroy: true, :reject_if => :all_blank
  field :name, type: String
end
