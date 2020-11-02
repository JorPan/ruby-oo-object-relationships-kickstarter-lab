require "pry"

class Backer

    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project project 
        ProjectBacker.new(project, self)
    end

    def backed_projects 
        var = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        var.map do |pb|
            pb.project
        end
    end
end