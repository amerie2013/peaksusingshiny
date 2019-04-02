# peaksusingshiny

**Finding peaks of data using R Shiny**

In this project we will run a program to find the peaks of the data. Our data has this summary
```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  918.0   967.0   977.0   988.4   998.0  1367.0
  ```
  Our Algorithem to find the start of the peak is checking in the value that we are in, 
  is grater than the fifth value after it by at least 10. Also, height of the peak is 
  at the value which it is higher than the five valuse after it. The end of the peakis 
  at the value which is greater than the fifth value after it by 2.
  
  The intersting thing in this project is it is applied using shiny with the properties 
  of uploding **CSV** file in the website and choose the column the the result will shows in the site itself.
  Bellow is the code you can run to check the results:
  
  ```
  runGitHub( "peaksusingshiny", "amerie2013")
  ```
  
  To check the effection you can uploud the file **DataFile1.csv** (It is available in the store of the project.
   the picture will show this way
   
    ![](20190401_195800.png?raw=true)
    
    And after you uplode the file you get this:
    
    
 ![](20190401_195801.png?raw=true)
