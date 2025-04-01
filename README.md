### Exercise: Train a Neural Network using PyTorch

This exercise is about implementing the **training loop** for a simple binary classifier using PyTorch. The Neural Network is consisted of **4** neurons at the input layer, **64** neurons at the hidden layer and a single output neuron. The chosen loss function is `BCELoss()` and `Adam` is used as an optimizer.

The dataset, model, optimizer, and loss function are already provided. Your job is:

- Run the training loop for a fixed number of epochs.  
- Compute the training loss and test loss.  
- Evaluate accuracy at each epoch.  
- Achieve satisfactory accuracy ~95%.

---

### Dataset

- The dataset comes from the iris dataset.  
- It is consisted of **4** features and a binary label (**0** or **1**).  
- Originally `iris.target` is consisted of 3 unique values (**0**, **1**, **2**). To guarantee binary labels we only use the first **100** data points.  
- Features are parsed to variable `X` and labels are parsed to variable `y`.

---

### What you’ll learn

- How to structure a clean PyTorch training loop  
- Using `.train()` and `.eval()` modes properly  
- Disabling gradient tracking with `torch.no_grad()`  
- Tracking and plotting losses and accuracy over time

---

### Python libraries

- **PyTorch** for modeling and training  
- **scikit-learn** for preprocessing  
- **matplotlib** for visualizations  
- **tqdm** for progress tracking  

---

### Instructions

- This assignment is consisted of **13** cells.
- You should execute each cell in sequence.
- The Neural Network model is defined in cell number **7**.
- **Your code should be inserted in cell number 9**.
- You should not change content of other cells, for example modifying the learning rate value.
- Make sure you record values for `test_losses`, `train_losses`, `accuracies` for each `epoch`.
- `Sigmoid` function outputs continuous values between **0** and **1**. You must transform this output to binary values (**0** or **1**) in order to compare model outputs against labels.
- Accuracy values must be between **0** and **1**.
- In order to visualize your results you can plot losses and accuracies running cell **10** and **11** respectively.
- Your grade can obtained running cell **12**.
- Solution for this work can be found at the last cell.
- Please, only check solution after you have worked and debugged your own code.

---

### Files in This Project

- `ModelTraining_Exercise.ipynb`: Your assignment notebook
- `Dockerfile`: Docker image setup for running JupyterLab
- `requirements.txt`: Required Python libraries
- `README.md`

---

### How to Run This Notebook with Docker

 - **Clone repo**: first clone this repository to your local machine. Open your terminal and run:
 ```bash
    git clone https://github.com/bruno-gabrich/pytorch-training-assingment.git
 ```

 - **Install Docker**: if you don't have Docker installed, download it here:https://www.docker.com/products/docker-desktop

 - **Build the Docker image**: open a terminal in the same folder where you cloned this repository and run:
```bash
   docker build -t pytorch-training-assignment .
   ```

3. **Run the container, and open the notebook in your browser**

   ```bash
   docker run -p 8890:8888 pytorch-training-assignment
   ```

   Then go to:  
   [http://localhost:8890](http://localhost:8890)  
   The notebook `ModelTraining_Exercise.ipynb` will open automatically. If not check the file tree on the left section of your monitor.

### Good Luck!
