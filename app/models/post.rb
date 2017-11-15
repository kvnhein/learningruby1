class Post < ActiveRecord::Base
    belongs_to :user
    belongs_to :receiver, class_name: 'User'
    default_scope { order(created_at: 'DESC') }
end