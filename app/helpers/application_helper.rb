module ApplicationHelper
  def full_website_title( path = 'default_path.com')
    return 'it working fine '
  end
  
  def full_title(title)
    'full title API ' + title
  end  
end
