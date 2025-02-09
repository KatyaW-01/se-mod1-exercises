class Student
    attr_reader :name, :mod, :skills
    def initialize(name,mod)
        @name = name
        @mod = mod.to_s #turns it into string
        @skills = []

    end

    def say_mod
        "I'm in Mod #{mod}"
    end

    def learn(skill)
        @skills <<skill
    end

    def promote
        @mod = ((@mod.to_i) + 1).to_s
    end
end