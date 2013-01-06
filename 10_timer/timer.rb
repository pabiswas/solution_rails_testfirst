class Timer
  def initialize
    @seconds = 0
  end
  attr_accessor :seconds
  
  def time_string
    hour = @seconds/(60*60)
    sec = @seconds%(60*60)
    
    sprintf("%02d:%02d:%02d",hour,sec/60,sec%60)
  end
end
