class Post < ActiveRecord::Base
  has_many :comments
  # accepts_nested_attributes_for :comments

  def comments_attributes
    #code
  end

  def comments_attributes=(attribs)
    #code
  end
end
