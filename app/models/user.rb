class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  # validates :email, format: { :with "/\w+@\w+\.((com)|(edu)|(gov)|(co)|(ufop))/" }
  validates_format_of :email,:with => /\A\w+@\w+\.\w+\z/
end
