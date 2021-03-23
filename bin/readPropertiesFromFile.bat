rem read key=value from file
for /f "delims== tokens=1,2" %%G in (config.txt) do call set %%G=%%H
