class PageController < ApplicationController
  def home
  end

  def about_us
  end

  def contact_us
    @submitted = params["commit"]
    @name = params["name"]
    @form_error = false
    if @name == ""
      flash.now['error'] = "Please enter your name! "
      @form_error = true
    end
    @email = params["email"]
    @question = params["question"]
    @newsletter = params["newsletter"] == "newsletter"
    gender = params["gender"]
    @male = gender == "Male" #true or false
    @female = gender == "Female" #true or false
    @product = params["product"]
  end

  def products
  end

  def newsletter
  end

  def blog
  end

  def calendar
    @time = Time.now
    @month = @time.month
    @year = @time.year
    @day = @time.day
    @day_of_week = @time.strftime(" %w ").to_i
  end

  def articles
  end

  def login
  end
end
