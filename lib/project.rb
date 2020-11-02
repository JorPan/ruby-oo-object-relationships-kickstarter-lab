class Project

    attr_reader :title

    @@all = []

    def initialize title
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer backer
        ProjectBacker.new(self, backer)
    end

    def backers
        var = ProjectBacker.all.select do |pb|
            pb.project == self
            
        end
        
        var.map do |pb|
            pb.backer
        end
    end

end