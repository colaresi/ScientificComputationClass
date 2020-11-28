Scientific Computation for Social Scientists (ScientificComp4SocSci)

Organized by Michael Colaresi, University of Pittsburgh

This is the partial git repo for the course Scientific Computation for Social Science. 

# Syllabus

The syllabus for the full class is [here](ScientificComputation4SocialScience.pdf), which is hosted on canvas.

The videos are too large to upload to github.

# Sandbox

Code to explore and learn with is in the sandBox folder. The documentation is till getting built.

# Getting started

Basic directions are as follows.

1. If you have a mac or Linux computer, you should have a terminal command line interface (CLI) already. 
Recent mac's use zsh as the default shell, older mac's use bash.
The commands we will be using should work in both bash and zsh but I prefer zsh. 
If you are using zsh (and I recommend it), I suggest also using oh-my-zsh, installation and discussion is available [here](https://ohmyz.sh).
If you have a mac and need to switch to zsh from bash, see [these](http://zpalexander.com/switching-to-zsh/) directions.

2. For mac, the default terminal app can be usefully replaced with iterm2, see the information [here](https://iterm2.com).

3. Mac users should install Xcode, Xcode command line tools, and homebrew.
Xcode and Xcode command line tools are available from the App store.
Directions to install Xcode are [here](https://apps.apple.com/us/app/xcode/id497799835?mt=12). For homebrew, see this [link](https://brew.sh). Homebrew provides a way of getting extremely useful linux tools on macs. Xcode provides other tools that are useful for building code, compilers, etc.   

4. If you have a windows computer, you will need to follow the steps [here](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to get access to a command line interface that will work.
While I do not have a windows machine to test it out on, I believe [these](https://blog.joaograssi.com/windows-subsystem-for-linux-with-oh-my-zsh-conemu/) direction will allow you to switch your shell to zsh if you want to.

5. Everyone: You are going to need a robust python installation.
So everyone should install either minicoda or the full anaconda install.
The full anaconda install is [here](https://www.anaconda.com/products/individual) (you want the Python 3.8 or higher version).
More information can be found [here](https://docs.anaconda.com/anaconda/install/).
If you have plenty of space on your hard-drive and a good internet connection, go with that one.
If your computer does not have a lot of memory or hard drive space, and/or your internet download speed is not great, then get miniconda.
This is a lightweight version of the anaconda install of python, where you will need to install other libraries/modules as you go. This is no big deal. Many people actually prefer miniconda. You can install miniconda from [here](https://docs.conda.io/en/latest/miniconda.html).

6. Using conda or miniconda, please install numpy, scipy, scikit-learn, pandas, and jupyterlab.
For example, `conda install numpy scipy scikit-learn pandas jupyterlab` 
More information on installing packages with conda can be found [here](https://docs.anaconda.com/anaconda/user-guide/tasks/install-packages/). 

Sometimes `pip` is needed to install packages. `conda install pip` can be called and then `pip MYSTERY-PACKAGE` can be used to install some `MYSTERY-PACKAGE` that is not available on conda. 
