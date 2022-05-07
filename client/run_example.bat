:: This is the auto script for windows

:: the timeout set an interval(or sleep) between starting two clients. 
:: If you found cars collision with each other, please set it to a larger number to delay the enter of the second car.

:: start first demo client
start python auto_agent_run.py
timeout /t 15
:: start second demo client
start python auto_agent_run.py
timeout /t 12
:: start third demo client
start python auto_agent_run.py
timeout /t 12
:: start fourth demo client
start python auto_agent_run.py