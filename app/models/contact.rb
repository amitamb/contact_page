class Contact
  include ActiveModel::Model

  attr_accessor :nickname, 
                :name, 
                :subject, 
                :email, 
                :message

  validates :nickname, 
            format: { :with => /\A\z/ }

  validates :name, 
            :subject, 
            presence: true
   
  validates :email,
            format: { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
   
  validates :message,
            length: { :minimum => 10, :maximum => 1000 }
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    true
  end
      
  def persisted?
    false
  end
end