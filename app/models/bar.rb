class Bar < ActiveRecord::Base
  include Heimdallr::Model
 
  belongs_to :foo

  restrict do |user, record|
    scope :fetch
    scope :delete
  
    if user.email == "admin@example.com"
      can [ :view, :create, :update ]
    else
      can :view
    end
  end
end
