module ApplicationHelper

  # ページごとの完全なタイトルを返します。
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  # def time_format(time)
  #   format("%.2f", (((time.hour * 60) + time.min).to_d / 60.to_d))
  # end
  #↓UsersHelper
  # def format_basic_info(time)
  #   format("%.2f", ((time.hour * 60) + time.min) / 60.0)
  # end
end