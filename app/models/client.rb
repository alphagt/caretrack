class Client < ApplicationRecord
  belongs_to :admin, :class_name => "User", :foreign_key => "user_id"
end