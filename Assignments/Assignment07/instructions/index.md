# Assignment 7 - A canvas 2D grphics scene

**Due: Mar 25, 2022 at 11:59pm**

Follow the instructions below to download the starter project of this assignment. Having done that, your task for this assignment is to create a 2D graphics scene using the HTML canvas element. Your scene needs to be implemented using the ES6 version of JavaScript and must consist of different colors and shapes. What the scene is about is left up to you; just make sure you to meet the following requirement:

- Define JavaScript variables and constants (using let and const)
- Use more than one conditional structure (if/else; ...)
- Use more than one loop (for, while, do/while)
- Define and call functions
- Make your scene interactive by having at least two components controlled using a form

Check out [MDN Canvas API tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial) (Links to an external site.) for more information on drawing to the HTML Canvas element. Make sure to watch the [Drawing to an HTML canvas](https://weber.instructure.com/courses/541632/modules/1144246) video.

## Instructions

For this assignment, you need to have a GitHub account. If you don’t have one already, please sign up for one at [https://github.com/](https://github.com/).

### Getting the starter code from GitHub

- Sign in to GitHub.
- Go to the assignment link [https://classroom.github.com/a/5T1YQaQN](https://classroom.github.com/a/5T1YQaQN) (Links to an external site.) and accept the assignment. This should create a private repository under your GitHub username for this assignment. Click on the given link to open this repository and see the starter code.
- Click on the **Code** button dropdown and copy the given URL.
- Navigate to your assignments folder (or any folder you want this assignment to be placed in) and open it using Visual Studio Code.
- In Visual Studio Code, open a new terminal and then run:<br>`git clone THE_URL_YOU_COPIED`<br>This will download the starter code of this assignment from GitHub and create a folder for it with a name like **cs2350-assignment-?-github_username**.

### Launching the live development server

- Open the assignment folder (cs2350-assignment-?-github_username) in Visual Studio Code. Start a new terminal.
- This assignment is powered by NPM and Webpack. If this is your first time running this assignment, run the following command to set it up and install its dependencies:<br>`npm install`
- Run the following to start the live development server during development:<br>`npm start`<br>The server will be running at port 8080 and you can access it from the browser by visiting http://localhost:8080. While it runs, it will monitor your source files and compile them automatically when they are changed.
- If asked to deploy your assignment into a weber server, run the following command after being done with development to deploy it to the /dist folder:<br>`npm run deploy`<br>Then copy the contents of the /dist folder (including subfolders) to the weber server.

### Submitting your program to GitHub

- Make sure to save your changes and commit them to GitHub when you are done. You can do that by running the following commands from inside your assignment folder:

```bash
git add .
git commit -m 'short commit message goes here'
git push
```

Make sure to do this at least once by the deadline. For your final submission, I recommend using “Final submission” for the commit message. Note that committing changes is not enough; you have to push them to GitHub; otherwise, your changes will stay on your local machine and I will not be able to see your submission.

- Go to your assignment repository in github.com and make sure your changes are there.
- Click on the green Code button dropdown and copy the given URL. Go to Canvas and submit the copied URL. This URL must be submitted in Canvas after you make your "Final submission" to GitHub.
