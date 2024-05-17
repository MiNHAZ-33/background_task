class Post < ApplicationRecord

  def self.scheduled_create
    100.times do
      CreatePostsJob.perform_later
    end
  end

end
