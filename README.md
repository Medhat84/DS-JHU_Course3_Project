# DS-JHU_Course3_Project
This is the project for getting and cleaning data course @ JHU on coursera.
- 4 files are included in this repo.
- 1st file is CodeBook.md, it describes the original UCI datasets and the processing that has been done on them to get a final summarized dataset.
- 2nd file include the R script used to do the processing mentioned in the previous step.
- 3rd file is the final tidy dataset obtained from running the above mentioned script.
- The last file is this file itself.

- Training & test data for the original features have been extracted. They are normalized, so ranged from -1:1
- Activity labels for training & test data have been extracted.
- Names of features & activities have been extracted.
- Subject labels for training & test data have been extracted.
- Training & test data have been merged together to form one dataset with the corresponding labels for activities & subjects.
- Feautures names are assigned to columns(variables) and activity names have replaced the numeric values representing activities.
- All variables are excluded from dataset except for mean & standard deviation of measurements.
- Some mistakes are noticed in variable names. So, they have been corrected.
- Dataset have been grouped by activity then by subject and summarized by the mean values for each of the 66 variables.
- Dataset has been exported to a text file.  
