class SayController < ApplicationController
  def hello
    @now = Time.now
    @yo = "Yo Ho!"
  end

  def goodbye
  end

  def something
  end

end
