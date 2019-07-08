class RobotCleaner
      attr_reader :x_position, :y_position, :locations, :location_of_dirt

      def initialize
        @locations = Array.new # this will store all the locations robot cleaner was in, and a new array is created so will not store from old cleans
        @location_of_dirt = Array.new # store positions of dirt
        @x_position = File.readlines('input.txt')[1][0].to_i # starting position of RobotCleaner on the x axis
        @y_position = File.readlines('input.txt')[1][2].to_i # starting position of RobotCleaner on the y axis
      end

      def turn_on
        navigational_commands = File.readlines('input.txt').last.split("") # retrieving the navigational commands e.g. NNESEESWNWW
        y_direction_numerics = { 'N' => 1, 'W' => 0, 'E' => 0, 'S' => -1} # y axis commands that will only affect the y axis
        x_direction_numerics = { 'N' => 0, 'W' => -1, 'E' => 1, 'S' => 0} # x axis commands that will only affect the x axis
        x_axis_limit = File.readlines('input.txt').first.split("").first.to_i # getting the x axis limit
        y_axis_limit = File.readlines('input.txt').first.split("")[2].to_i
          navigational_commands.each { |letter|
            @x_position += x_direction_numerics[letter].to_i # iterating through the commands which effects the X and Y positions
            @y_position += y_direction_numerics[letter].to_i
              if @x_position == -1 # this stops uses the limit, as the robot can only move only place at a time
                @x_position += 1
              elsif @x_position == x_axis_limit + 1 # the walls keep the robot in position but the maths allows us to not flasely record a location that doesnt exist.
                @x_position -= 1
              elsif @y_position == -1
                @y_position += 1
              elsif @y_position == y_axis_limit + 1
                @y_position -= 1
              end
            @locations << "#{@x_position} #{@y_position}" # saving all the locations the RobotCleaner was in
          }
          @locations
        end

        def format_and_get_dirt_locations
          dirt_locations = File.readlines('input.txt')[2..File.readlines('input.txt').length-2]# retrieving only the locations of the dirt
          dirt_locations.each {|location| @location_of_dirt << location.delete("\n")} # cleans the location of dirt data and removes the line breaks \n so we can check for intersections in the two arrays
        end

        def find_and_return_results
        intersections = @locations & @location_of_dirt #gives the intersection locations
          puts "The robot finished at these coordinates #{locations.last}" # returns the last location the robot was in after all commands have been run
          puts "The robot cleaned #{intersections.count} patches of dirt" #returns the amount of times intersected
          return "The robot finished at these coordinates #{locations.last}", "The robot cleaned #{intersections.count} patches of dirt" #line is here to help with testing

        end

end

robot_cleaner = RobotCleaner.new
robot_cleaner.turn_on
robot_cleaner.format_and_get_dirt_locations
robot_cleaner.find_and_return_results
