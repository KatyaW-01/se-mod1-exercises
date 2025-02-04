class Unicorn
    attr_reader :name, :color
    def initialize (name_arg, color_arg)
        @name = name_arg
        @color = color_arg
        @magical_powers = []
    end
    def add_power(power_arg)
        @magical_powers << power_arg
    end
end
