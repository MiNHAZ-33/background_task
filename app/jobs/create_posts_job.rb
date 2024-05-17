class CreatePostsJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    p = Post.new(title: "Created by background #{Time.now}",
                description: "This is a post created from the background ")
    if p.save
      puts "New post is saved from background"
    else
      puts "Background save is failed"
    end
  end
end
