### Tray Tech Test
## Setup and Run
open up the command line and run, this is under the assumption you already have ruby installed on your computer.

``git clone https://github.com/jamesdew12/Tray.git``

Then your going to want to move into the file so cd in the tray file.

``cd Tray``

Now we want to install all the gems so run:

``bundle install``

Now to run the program run the following:

``ruby robot_cleaner.rb``

Now you should have got a nice output in the command line telling you the current location of the Robot Cleaner and the amount of dirt patches it cleaned up.

Now do you want to do the test but use different input, simply change the ``input.txt`` but make sure you format correctly.
- Type in the dimensions of the room on first line use single spacing e.g:

  5 5
- Type your starting location of the robot cleaner on the second line e.g:

  1 2
- Type as many or as few patches of dirt in the same format, on different lines, e.g:

  1 0

  2 2

  3 3

  2 3

  0 1

  0 3

  4 3
- Finally type in the navigational commands in the last line, use only N,W,S or E, each representing North, West, South and East respectively. Make sure to type in in CAPS and leave no spaces. e.g:

  NNESEESWNW

- If there is some confusion please feel free to use the ``input.txt`` file for reference.

## Reflection
It was tough choice between either working in Ruby or Javascript, two languages that I am familiar with, however I opted to work in Ruby because its a language I have been using recently and feel most confident in writing in and showing off my skills.

If I was to do the test differently/again I would firstly do it in Javascript so I could put in some more practice in Javascript, and get more code exposure to different languages. However If I were to expand on this test I would add some more variables to the equation e.g. sofa in the room.

Overall I think the challenge went pretty well, I’m really happy with the code that I have written, the tests I have wrote and the overall experience of the test itself was quite fun and good for practice.

# Implementation & Sales Engineer Candidate Test
For this test please go to the Implementation & Sales Engineer Candidate Test file in this repository.
