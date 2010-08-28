class User < ActiveRecord::Base
  has_many :lists
  has_many :items, :through => :lists
  validates_presence_of     :name, :message => "es requerido"
  validates_uniqueness_of   :email, :message => "debe de ser único"
  validates_format_of       :email, :with => /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/  
end
