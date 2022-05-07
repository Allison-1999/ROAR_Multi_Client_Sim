:: This is the auto script for windows

:: start_interval is the timer between starting two clients. 
:: If you found cars collision with each other, please set it to a larger number to delay the enter of the second car.
set /A start_interval=15
:: start first demo client
start python auto_agent_run.py
timeout /t %start_interval%
:: start second demo client
start python auto_agent_run.py
timeout /t %start_interval%
:: start third demo client
start python auto_agent_run.py
timeout /t %start_interval%
:: start fourth demo client
start python auto_agent_run.py