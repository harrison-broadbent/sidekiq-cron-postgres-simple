class SidekiqPostJob
  include Sidekiq::Job

  def perform(*args)
    # Do something
    p = Post.new
    p.title = Time.current
    p.save
    puts "saved post", p
  end
end
