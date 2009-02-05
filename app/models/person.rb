class Person < ActiveRecord::Base
   validates_presence_of :name
   has_many :memberships
   has_many :groups, :through => :memberships

   # def to_param returns (perhaps)name, used for searching: the published 'key' for this object
end
