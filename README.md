# Project Overview

The goal of this project is to create a platform that offers players a wide selection of casual games they can play anytime. Additionally, the platform will host special events ranging from a month to just a few hours, selected by the platform managers. During these events, players with a special NFT pass can compete to achieve the highest score possible. At the end of the event, players can mint specific NFTs, making it a play-to-mint and play-to-earn experience.
To make the competition more engaging, the platform will include a leaderboard for each game, displaying real-time scores and rankings of all participants who have a pass to appear on the leaderboard during the events. The NFTs earned by players can also be used as a pass for accessing new game events in other games.
# Architecture Used:
React and Angular are both popular front-end frameworks that follow different architectural patterns. In Angular, the recommended approach is to use a component-based architecture along with services for data and business logic. While React also uses components, it doesn't have a strict recommendation on how to structure your project. However, in this project, we have organized our React project similar to an Angular project using the following steps:

### Step 1: Create a "components" folder
This folder contains all our reusable components that we can use throughout our application. We can further organize the components into subfolders based on their functionality.

### Step 2: Create a "services" folder
This folder contains all our data and business logic. We can create separate files for each service and place them in this folder.

### Step 3: Create a "shared" folder
This folder contains any shared resources like constants, interfaces, the NFTs classes, or helper functions.

# Add work to GitLab:
After completing a task, it is important to create a new branch in GitLab and add our work (project version) to it. We should include a brief description in the README file of what we have added to the project, including any services, classes, or components that we have worked on. It is crucial to thoroughly test our work before merging it into the master branch.