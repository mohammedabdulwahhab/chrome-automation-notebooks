# Overview
This repo gives ready-made skeleton code to automate Chrome with Docker + Selenium + Jupyter.


###
see [Recipe on Gitbook](https://furkhan324.gitbook.io/workspace/dev/web/automation/headless-browsing-recipe)


## Usage

You can run the python notebooks in 2 contexts:

### Run non-headless on Mac

    $ # set context = 'mac' on main.ipynb
    $ jupyter notebook


### Run headless within Docker

    $ # set context = 'linux' on main.ipynb
    $ docker build -t chrome_automation_notebook . -f Dockerfile
    $ docker run --name chrome_automation_notebook -it -p 8080:8080 -p 9222:9222 -v $(pwd)/notebooks:/notebooks chrome_automation_notebook
