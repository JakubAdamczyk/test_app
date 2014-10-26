class Post < ActiveRecord::Base
  
  after_save :set_visible_to_false
  validates :body, presence: true
  
protected
  def set_visible_to_false
    self.visible = false
    self.save
  end
  
end
