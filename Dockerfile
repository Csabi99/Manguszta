FROM python:3.9.12

RUN apt-get update &&  \
	apt install -y 


# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file into the container
COPY ./requirements.txt /app/requirements.txt
COPY ./labels.csv /app/labels.csv
COPY ./skeleton.ipynb /app/skeleton.ipynb

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start the Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]
