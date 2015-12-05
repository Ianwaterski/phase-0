# 1.1 Think about time
I spent my time focusing on mindfulness driven productivity.  I spent time researching different techniques meant to bring focus into the present and managing stress/anxiety.  Meditation in particular is something I spent extra time researching in an attempt to reel in scattered thoughts and thought processes.  Through meditation and stepping way from said problem for a short amount of time I'm hoping I can remedy the biggest problems effecting my productivity.



Time boxing is taking a pre established amount of time and working for the entire duration.  After the box is finished you evaluate your work during that time instead of working endlessly until the project is finished.  During Phase 0 I think this can be used to evaluate individual challenges.  After a time limit of an hour of work take a step back, review what I've completed and how my time was spent accomplishing the task instead of "did I finish this entire challenge in an hour".  Doing so can provide personal feedback into my current time management to determine if it is effective or how I can change my strategy to be more effective.



Currently outside of DBC my time management is extremely loose.  I spend my days trying to be a balanced human.  Cesar Milan talks about balanced dogs having exercise, discipline, and affection to be balanced; I don't think being a balanced human is that far removed from what it takes for a dog.  My time isn't regimented down to the hour so I balance my time through days.  My work week is only 3 days long so during my days off I block activities out to maximize balance.  For me its exercise (rock climbing/traditional gym), mental engagement (games/puzzles/reading), and relaxing/centering to be as productive as possible.



I think my current strategy is working.  I've put myself in a position to succeed by being accepted to DBC and now working to complete DBC.  I think my lifestyle was not regimented enough to get insight as to whether or not it was in the long run.  Overall, I think my strategy will stay the same while absorbing new techniques to help me achieve my goal.  I never formally adopted meditation as a technique but often take long walks with my dog to achieve that mindfulness zen that I think meditation strives for.  I think going forward I'm going to do more research and use apps such as Headspace to grow this strategy alongside what I'm already doing.  Learning more about time management and productivity can only help my cause so time will tell how effective they are as I progress through DBC.


# 1.2 The Command Line
A shell is the interface a user uses to enter text commands for the computer to follow.  Bash is a specific version of a Unix shell that is default on OS X.



The most challenging aspect of this challenge was navigating the example code and not getting lost.  With no line numbers it was easy to get mixed up in the long lines of paths and forget where I was.  At first navigating around paths with pushd/popd was confusing, but navigating through the stack linearly was easy to understand with cd and ../ .  On my first session of working with this concept I watched the video first and felt a bit overwhelmed, I took a break and came back to finish with the crash course and immediately felt a lot more comfortable since the commands were all laid out in front of me with descriptions.



I was able to successfully use all the commands listed and illustrated in the demos.  During the mkdir/rmdir portion I came to a point in path where it wouldn't let me remove a directory because terminal said the directory was not empty, though when I located it via GUI it was empty.  Other than that I think the examples and commands listed were fairly easy to apply, some just a bit more in depth than others.  I think early experience with DOS prompts definitely helped though.



touch, rm, mkdir -p, rmdir, ../, cd, ls I think were personally the most useful for me throughout the exercises. They allow creation and deletion of files/folders, and also the navigation through the stack with ../ and cd.  Pushd and popd are also useful in streamlining the navigation but in the early stages cd and ../ seemed easiest to pick up quickly.



pwd: print working directory

ls: list directory

mv: move directory

cd: change directory

../: move up the stack one directory

touch: create a 0 byte file

mkdir: make directory

less: will display contents of a file

rmdir: remove directory

rm: remove a file

help: access help file (on windows)


# 1.4 Forking and Cloning
I can't say the instructions would be all that different than what is already in front of me.  Head to github, click the "+" in the upper right hand corner and click create repository.  Once created navigate to a repo you wish to fork, once at the repo in Github click the fork icon, when prompted to select a user select your account.  Once the repo is finished processing it has copied to your repo.  To clone(copy) the repo to your computer, first copy the HTTP address then open terminal.  Once in terminal navigate to the directory that you wish to save to, cd phase0.  Once in phase0 use git clone <url here> to clone the repo to your computer.  Once the file is cloned to your directory cd <repo name> to get into your new directory, then ls to make sure all the files are there.  Cloning a repo is much easier than creating a new one because someone else did all the work!  Everything you would need for your project could be forked to your repository then cloned to your computer instead of hashing it all out yourself.  Getting all the necessary files on to your local machine lets you edit at your leisure, then either push to the master branch after working, or add a new branch to merge later.





I didn't encounter any troubles when setting up Git/Github.  It took a bit of reading and re-reading to get my understanding of branches and merging/committing down though.  Once I had the basics and continued on with challenges it seemed to solidify itself with what I had learned previously in the command line challenge.
