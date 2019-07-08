### Tray Tech Test
## Setup and Run
open up the command line and run

``git clone https://github.com/jamesdew12/Tray.git``

Then your going to want to move into the file so cd in the tray file.

``cd Tray``

Now we want to install all the gems so run:

``bundle install``

Now to run the program run the following:

``ruby robot_cleaner.rb``

Now you should have got a nice output in the command line telling you the current location of the Robot Cleaner and the amount of dirt patches it cleaned up.

Now do you want to do the test but use different input, simply change the ``input.txt`` but make sure you format correctly.
- Type in the dimensions on first line use single spacing e.g:

  5 5
- Type your starting location on the second line e.g:

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
