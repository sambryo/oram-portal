GitHub Rules of Engagement

# Introduction

While your team is not meeting with your TA, this activity is to help structure some discussion that your team should have to help make things run more smoothly.

It is important to discuss the rules of engagement when using GitHub because it will setup the norms and expectations within your team of how you will use GitHub. They do not need to be the same rules as any other team, but having clear expectations of how the entire team interacts with the repo will reduce conflict or confusion in the future of what is going on in your team's repo.

You will be expected to submit the results of this discussion with your iteration part 1 either as part of that submission or a link to where it made the most sense to put for your team, so your team can readily find and consult it (Hint: You probably want to do the latter).

# GitHub Questions to Discuss

1. Will you use issues or milestones in GitHub? Or keep all of that in PIvotal Tracker?

    1. Keep in Pivotal Tracker

2. Master branch is the main branch? Some other branch is what is deployed as production?

    2. Deploy on master

3. What will be your branch naming convention?

    3. Will you have any?

        1. feature_username

    4. Require a username is in the branch name, so everyone knows who owns it?

    5. Include keywords like: feature, bug, fix, wip (work-in-progress)

4. What is the unit of a commit?

    6. A single feature?

    7. A lot of tiny changes?

    8. It doesn't matter?

5. What will be the workflow of branches?

    9. Have a work-in-progress branch first with whatever commits as desired. Then when ready for a PR, branch to create a non-work-in-progress branch, squash commits, and then push to repo for the PR?

    10. Just create a branch for each feature and squash as necessary?

6. Rebasing, merging, squashing?

    11. Thou shalt always rebase?

    12. Thou may rebase or merge as thou see fit?

    13. Thou must squash before putting things in master?

# Example: GitHub Rules of Engagement for TA Kristin's Research Team

1. *Will you use issues or milestones in GitHub? Or keep all of that in Pivotal Tracker?*

We use issues and milestones in GitHub. (We don't have Pivotal Tracker.)

2. *Master branch is the main branch? Some other branch is what is deployed as production?*

The master branch is final work.

* Do not commit straight to master, always use a PR and tag someone to review it.

* Always rebase.

3. *What will be your branch naming convention?*

    1. *Will you have any?*

    2. *Require a username is in the branch name, so everyone knows who owns it?*

    3. *Include keywords like: feature, bug, fix, wip (work-in-progress)*

Branches shall be named: USER-NAME/[wip/]SHORT-NAME

4. *What is the unit of a commit?*

    4. *A single feature?*

    5. *A lot of tiny changes?*

    6. *It doesn't matter?*

To encourage committing and pushing to the repo often use work-in-progress (WIP) branches, until ready for a PR. Then branch from WIP and squash commits into appropriate feature level units (often just one commit).

5. *What will be the workflow of branches?*

    7. *Have a work-in-progress branch first with whatever commits as desired. Then when ready for a PR, branch to create a non-work-in-progress branch, squash commits, and then push to repo for the PR?*

    8. *Just create a branch for each feature and squash as necessary?*

6. *Rebasing, merging, squashing?*

    9. *Thou shalt always rebase?*

    10. *Thou may rebase or merge as thou see fit?*

    11. *Thou must squash before putting things in master?*

Thou shalt keep the master branch commit history clean by squashing commits into understandable units at the feature level before pushing to master.

* If after code review more commits were added to that branch. We shall:

    * Branching from the PR branch

    * Squashing commits as appropriate

    * Use this new branch to rebase it onto master

    * Close the PR with a link to the commit

