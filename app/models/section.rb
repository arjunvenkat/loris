class Section < ActiveRecord::Base
  belongs_to :course

  def formatted_timeframe
    "#{formatted_time(start_date_time)} to #{formatted_time(start_date_time + course.weeks.weeks)}"
  end

  private
    def formatted_time(time)
      time
        .in_time_zone("Central Time (US & Canada)")
        .strftime('%a,  %b %d %Y at %l:%M %p CST')
    end
end
