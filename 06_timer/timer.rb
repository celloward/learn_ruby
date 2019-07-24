# class Timer
#   attr_accessor :hours, :minutes, :seconds, :time_string

#   def initialize
#     @seconds = 0
#     @minutes = 0
#     @hours = 0
#     @time_string = {"hours" => @hours, "minutes" => @minutes, "seconds" => @seconds}
#   end

#   def seconds=(seconds)
#     if seconds > 59
#       @minutes = seconds / 60
#       seconds = seconds % 60
#     end
#     @time_string["seconds"] += seconds
#   end

#   def minutes=(minutes)
#     if minutes > 59
#       @hours = minutes / 60
#       minutes = minutes % 60
#     end
#     @time_string["minutes"] += minutes
#   end

#   def hours=(hours)
#       @time_string["hours"] += hours
#   end

#   def time_string
#     @time_string.each_pair do |key, value|
#       if value > 59

#     @time_string.transform_values {|timing| timing < 10 ? timing = "0#{timing}" : timing = timing}.values.join(":")
#   end

#  end
class Timer
  attr_accessor :hours, :minutes, :seconds, :time_string

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
    @time_string = [@hours, @minutes, @seconds]
  end

  def seconds=(seconds)
    @time_string[2] = seconds
  end

  def minutes=(minutes)
    @time_string[1] = minutes
  end

  def hours=(hours)
      @time_string[0] = hours
  end

  def time_string
    carryover = 0
    @time_string.reverse.map.with_index do |timing, index|
      timing += carryover
      carryover = 0  #YUCK! So gross!!
      if timing > 59 && index < 2
        carryover = timing / 60
        timing = timing % 60
      end
      timing < 10 ? timing = "0#{timing}" : timing = timing
    end.reverse.join(":")
  end

 end


#  def time_string
#   @time_string.each_with_index do |timing, index|
#     if timing > 59 && index > 0
#       @time_string[index-1] = timing / 60
#       @time_string[index] = timing % 60
#     end
#   end
#   # carryover = 0
#   @time_string.map do |timing|
#     # timing += carryover
#     # carryover = 0
#     timing < 10 ? timing = "0#{timing}" : timing = timing
#   end.join(":")
# end

# end