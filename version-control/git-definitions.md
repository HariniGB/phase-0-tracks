# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
      Version control allows us to view the collaborative history of the content changes in one or more files. It also allows us to view the merge revisions done by different people. It helps to track the time when the file was created, modified, commit and saved as final document. One of the  common version control software is Git. 

* What is a branch and why would you use one?
       
      A branch in Git is like a movable pointer to the different versions of a file which are saved in a tree like structure. Creating a new branch in Git gives you a copy of the file/project to work.
      The default branch name in Git is master. The branches we create in Git are known as feature branch. Using feature branches we can duplicate the master files, do the changes, commit and then merge with the master branch. 

* What is a commit? What makes a good commit message?
       Git doesn't automatically save the versions of the file. Instead, after we have made the changed in the file, we need to save the changes to the Git as a new version. Commit records the changes in the file or repository. Save points in Git are known as commits. 

       Commits have unique ID and a message about "What is done in this file and why it is done". Commit also displays the author name for who created the file and a time stamp which helps to track "How old is the file/repository".

       Commit messages helps people other than the author of the file to know about the modifications that were made to the original master file.Understanding what and why something happened months/years ago in the file becomes efficient with good commit messages. Good commit messages must be detailed and state exactly what was modified in the file since last commit. It must not be too long and easily undestandable phrases. For instance, "Creating a makdown file","Add table for user's name list" etc.


* What is a merge conflict?
        In Git, "merging" is the process of integrating/merging/combine another branch into the current working branch. Git merge helps to interate all the changes made by different users to the same file/repository. But if two people changed the same lines in the same file or if one person deletes the file when another person adds contents to the same file, Git get confused. These type situations are called as merge conflict. Git will mark the file as "unmerged paths and fix conflicts" in the Git status. 

