# Manguszta
Deep learning assignment

<ins>Team name:</ins> **Manguszta** 

<ins>Members' names and Neptun codes:</ins> **Czuth Csaba B256KX, Jankura Renáta ZA3A63** 

<ins>Project description:  </ins>

The goal of this project is to gather you own real-world image dataset with different types of objects in it and train an image classifier for solving it. Dataset examples: books vs shoes vs furniture, houseplants vs outdoor plants vs trees. Make sure that your dataset contains at least 3 classes, with at least 50 examples each (1 image per object). Make sure that the gathered images are diverse, with varied view angles, background and lighting. Select classes such that the task is not trivial to solve.

The main difficulty in this task will be the small dataset size, think through what we learned in class for solving it. Build an image classification pipeline for your dataset and train multiple networks on it, compare their performance. Inspect failure cases.

<ins>Functions of the files in the repository:</ins>

requirements.txt: describe the required imports for running the script

Dockerfile: contains the docker's specification

images (folder): contains the dataset (because of github limitations it needs to be downloaded from drive, but in your local the images folder should be in the same place as the other files, and it contains the pictures directly)

**skeleton.ipynb**: contains the **milestone_1**

**baseline.ipynb**: contains the **milestone_2**

**completed.ipynb**: contains the **Final_submission**


<ins>Related works (papers, GitHub repositories, blog posts, etc):</ins>

    https://github.com/BME-SmartLab-VITMMA19/vision-assignment

    https://www.freecodecamp.org/news/python-requirementstxt-explained/

-------------------------------------------------------------------------

<ins>How to run **milestone 2** (building and running the container, running your solution within the container):</ins>

    docker build -t manguszta_dl .
    docker run --gpus all -p 8888:8888 -v /path/to/repository/images:/app/images manguszta_dl

    
1. Open [http://localhost:8888](http://localhost:8888) in your browser
2. Execute the cells in baseline.ipynb one after the other to train the model and evaluate it

<ins>How to run **final submission** (building and running the container, running your solution within the container):</ins>

    docker build -t manguszta_dl .
    docker run --gpus all -p 8888:8888 -v /path/to/repository/images:/app/images manguszta_dl

    
1. Open [http://localhost:8888](http://localhost:8888) in your browser
2. Execute the cells in completed.ipynb one after the other to go through the incremental model development and create the ML service in Gradio, which will be displayed in the final cell.
