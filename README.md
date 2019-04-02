# peaksusingshiny

**Finding peaks of data using R Shiny**

  In this project we will run a program to find the peaks of the data. Our data has this summary
```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  918.0   967.0   977.0   988.4   998.0  1367.0
  ```
  The algorithm used to find the start of the peak runs by checking if the current value in which we are in 
  is greater than the fifth value after it by at least 10. But, the algorithm used to find the height of the 
  peak,on the other hand, is run by checking if the current value is greater than the five following values.
  The algorithm used to find the end of the peak,however,is at the value that is greater than the fifth value
  following it by 2.
  
  The intersting thing in this project is that it is applied using shiny with the properties 
  of uploading a **CSV** file on the website and choose the column where the results will shows in the site 
  itself. Below is the code you can run to check the results:
  
  ```
  runGitHub( "peaksusingshiny", "amerie2013")
  ```
  
  To check the effect, you can upload the file **DataFile1.csv** (It is available in the package section/
  inventory). The picture will look this way
   
 ![](20190401_195800.png?raw=true)
    
    
  After you upload the file, you will see this:
    
    
 ![](20190401_195801.png?raw=true)
