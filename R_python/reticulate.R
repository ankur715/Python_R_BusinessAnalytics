install.packages("reticulate")  
library(reticulate)  
py_discover_config()  #Y install Miniconda for packages
#use_condaenv("relevantenv")  #if Python version not from relevant anaconda
py_config()  #check of the Python version
reticulate::py_config() 
py_install("pandas")

##  now all set to start running some python code
## 4 ways to interact with Python:
# 1. Python in R Markdown: Supports communication between R and Python (R chunks can access Python objects and vice-versa).
# 2. Importing Python modules: The import() function enables you to import any Python module and call its functions directly from R.
# 3. Sourcing Python scripts: The source_python() function enables you to source a Python script the same way you would source() an R script (Python functions and objects defined within the script become directly available to the R session).
# 4. Python interactive session: The repl_python() function creates an interactive Python console within R. Objects you create within Python are available to your R session (and vice versa).

#R
autos = cars

#Python
import pandas 
autos_py = r.autos
autos_py['time']=autos_py['dist']/autos_py['speed']
