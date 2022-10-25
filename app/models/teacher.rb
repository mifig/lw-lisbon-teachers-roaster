class Teacher < ApplicationRecord
  require "csv"

  def self.import(file)
    Teacher.destroy_all
    
    CSV.foreach(file.path, headers: true) do |row|
      Teacher.create(github_nickname: row[0])
    end
  end

  def self.to_a
    Teacher.all.map do |teacher|
      teacher.github_nickname
    end
  end
end
