class Section < ActiveRecord::Base
  self.skip_time_zone_conversion_for_attributes = [:start_date_time]

  belongs_to :course

  delegate :roadmap, :to => :course

  def formatted_timeframe
    "#{formatted_date(start_date_time)} to #{formatted_date(start_date_time + course.weeks.weeks)} on #{start_date_time.strftime('%A')}s at #{start_date_time.strftime('%l:%M %p CST')}"
  end

  def with_course
    "#{course.name} - #{formatted_timeframe}"
  end

  private
    def formatted_date(time)
      time
        .in_time_zone("Central Time (US & Canada)")
        .strftime('%b %d %Y')
    end
end
