class Teacher < ApplicationRecord
  require "csv"

  belongs_to :school

  validates :github_nickname, presence: true 

  def self.import(file, school_id)
    Teacher.destroy_all
    
    CSV.foreach(file.path, headers: true) do |row|
      Teacher.create(github_nickname: row[0], school_id: school_id)
    end
  end

  def self.to_a
    Teacher.all.map do |teacher|
      teacher.github_nickname
    end
  end
end
