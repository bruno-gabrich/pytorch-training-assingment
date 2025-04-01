FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install pip packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install JupyterLab
RUN pip install jupyterlab

# Copy notebook into container
COPY ModelTraining_Exercise.ipynb /app/

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--LabApp.default_url=/lab/tree/ModelTraining_Exercise.ipynb"]


