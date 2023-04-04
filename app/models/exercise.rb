class Exercise < ApplicationRecord
  belongs_to :user, optional: true

  alias_attribute :workout_details, :workout
  alias_attribute :activity_date, :workout_date

  validates :duration_in_min, numericality: {greater_than: 0.0}
  validates :workout_details, presence: true
  validates :activity_date, presence: true

  self.per_page = 10
  #default_scope {where('workout_date > ?', 7.days.ago).order(workout_date: :desc)}

  

end
