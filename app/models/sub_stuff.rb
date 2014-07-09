class SubStuff
  include Mongoid::Document
  embedded_in :stuff, inverse_of: 'sub_stuffs'
  field :name, type: String
end
