---------------------------------------------------------------------------------------------
These are the files for my Udacity full stack tournament/sql project.

To run these files install python and PostgreSQL on your system.  Or follow the instructions here:

 https://www.udacity.com/wiki/ud197/install-vagrant

Installing Udacity's Vagrant setup will run a virtual machine on your system already configured to run python and PostgreSQL.  Simply start vagrant and navigate to this folder.
----------------------------------------------------------------------------------------------
FILES DESCRIPTIONS:

tournament_test.py is the default file we were given to test our functions and database setup with, I've also added a test for the "Odd number of players" functionality, but otherwise the file is basically unchanged.

tournament.sql contains all the Postgresql code used to create the tournament database, players table, and matches table.

tournament.py is the workhorse of the setup and contains all the functions used to interact with the database and return Swiss pairings. 


tournament_run.py is a user interface I've created in order to use the database and pairings system instead of just testing it.  Typing "python tournament_run.py" into the vagrant virtual machine brings up a command line from which past tournaments can be viewed or deleted and a new tournament can be run.

WARNING!!! tournament_run.py is minimally functional.  There are no safeguards, typing delete will delete everything in the database no questions asked.  Entering ids from the same pairing multiple times will invalidate the system and future pairings!  Entering text instead of an id will crash the program.  Otherwise it works perfectly :)

----------------------------------------------------------------------------------------------
EXTRA CREDIT STATUS:

The code handles an odd number of players by giving the last place player a win

There is fully functional multi-tournament support

I've also created a UI in order to be able to interact with the tournament database and pairings system 
