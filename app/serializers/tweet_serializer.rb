class TweetSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id

  belongs_to :user
end
