module PostsHelper

  def correct_date_format(created_at)
    shifted_time = created_at.in_time_zone("Central Time (US & Canada)")
    date_format = "%b %d,  %Y at %l:%M %p"
    shifted_time.strftime(date_format)
  end
end
