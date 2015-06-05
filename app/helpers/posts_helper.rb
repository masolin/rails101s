module PostsHelper
  def render_post_content(post)
    truncate(simple_format(post), length: 200)
  end
end
