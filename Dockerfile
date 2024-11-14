FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

RUN apt-get update &&  \
	apt install -y 


# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file into the container
COPY ./requirements.txt /app/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

COPY ./labels.csv ./labels.csv
COPY ./skeleton.ipynb ./skeleton.ipynb
COPY ./baseline.ipynb ./baseline.ipynb
COPY ./completed.ipynb ./completed.ipynb

# Expose the Jupyter Notebook port
EXPOSE 8888

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

# Start the Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.disable_check_xsrf=True"]
