require 'csv'

class DailyHabit < ApplicationRecord
  def self.to_csv
    attributes = column_names - %w[created_at updated_at]

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |habit|
        csv << attributes.map { |attr| habit.send(attr) }
      end
    end
  end
end
