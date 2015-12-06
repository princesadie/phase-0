-How does tracking and adding changes make developers' lives easier?
Tracking changes allows developers to know when and where changes were made, who made them, and what their purpose at the time was. This takes a lot of the guess work out when pulling down work from others or the team. It also allows for reverting in case project destroying bugs or issues arise.

-What is a commit?
A commit is like a save point. It saves the current progress on the project like a snapshot in time.

-What are the best practices for commit messages?
Keep commit messages short and concise, subject within 50 characters and messages within 72. Use present-tense, imperatives.

-What does the HEAD^ argument mean?
Go back one commit. The last commit used.

-What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of git change are modified, committed, and staged. Modified means data has been altered, but hasn't yet been committed/saved, committed means data has been stored/saved locally, and staged means that modified data is ready to be committed to the next commit.

-Write a handy cheatsheet of commands you need to commit your changes.
git status - shows the current state of the tree being worked on
git clone - Clones a repo into a new directory
git add - adds current file to next commit
git branch [branch name] - Create new branch
git branch -D [branch name] - Deletes the named branch
git push origin [branch name] - Push the named branch to GitHub repo
git pull - Pull latest master branch from GitHub
git checkout [branch name] - Switch to named branch
git checkout -b [branch name] - Create and switch to named branch

-What is a pull request and how do you create and merge one?
You do a pull request on GitHub after pushing your modified branch from the command line. On the project's GitHub page, click the "New pull request" button, choose the branches to be compared and merged, and click "Create pull request". You can then evaluate the two branches, click "Merge pull request", and confirm the merge. Once the two branches have been merged, delete the pulled branch.

-Why are pull requests preferred when working with teams?
Pull requests allow multiple to work on the same projects and files without conflicting with each other's modifications. GitHub allows for easy merging once work has been done and a single master project is needed.

For the past year or so I've been hesitant to use GitHub because of an irrational fear I can't even describe. But being forced to learn it now that I'm in Dev Bootcamp and actually seeing how it all works and the benefits of it, I'm stunned. I've been working on game projects and sort of developed my own primitive local "version control" the way of projectname_v1, projectname_v2, etc, but this is just awesome. I've lost so much progress in the past using my antiquated method of "version control". Why I've waited this long to learn and try out GitHub I'll never be able to explain. Awesome!