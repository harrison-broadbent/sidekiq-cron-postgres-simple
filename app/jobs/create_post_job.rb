class CreatePostJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p = Post.new
    p.title = Time.current
    p.save
    puts "saved a new post: ", p
  end
end
