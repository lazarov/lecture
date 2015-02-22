class People < ActiveRecord::Base

  def fullname
    return "#{first_name} #{last_name}"
  end
end
