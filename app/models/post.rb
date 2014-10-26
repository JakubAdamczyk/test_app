class Post < ActiveRecord::Base
  
  after_save :set_visible_to_true
  validates :body, presence: true
  validates :title, presence: true
  
protected
  def set_visible_to_true
    self.visible = true
  end
  
end
