class BlogPosts < SiteBuilder

  def build
    blog_posts = 30.times.map do |i|
      {
        'slug' => { 'current' => "resource-#{i}" },
        'title' => "Title #{i}",
        'langauge' => 'en',
        'body' => 'This is my body text'
      }
    end

    blog_posts.each do |blog_post|
      add_resource :blog_posts, "#{blog_post.dig('slug', 'current')}.html" do
        layout :post
        title blog_post['title']
        locale blog_post['language']
        body blog_post['body']
      end
    end
  end

end
