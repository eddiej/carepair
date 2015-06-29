module ApplicationHelper
 
  # get an id for each controller-action. This will be inserted as an id in the body tag.
  def bodytag_id
    a = controller.class.to_s.underscore.gsub(/_controller$/, '').gsub(/\//, '-')
    b = controller.action_name.underscore
    "#{a}-#{b}".gsub(/_/, '-')
  end

  # get a class for each controller. This will be inserted as a class in the body tag.
  def bodytag_class
    a = controller.class.to_s.underscore.gsub(/_controller$/, '').gsub(/\//, '-')
    "#{a}".gsub(/_/, '-')
  end

end

