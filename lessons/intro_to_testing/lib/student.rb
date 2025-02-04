class Student
    attr_reader :name, :cookies
    #def name
        #@name
    #end
    def initialize(name)
        @name = name
        @cookies = [] #default value
    end

    def add_cookie(cookie)
        @cookies << cookie #array method called shovel
    end

end