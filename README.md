# auto_login
Powershell script to login automatically on my coding school

## How to execute automatically the powershell script

* Open Task Scheduler by typing “Task scheduler” in the window start menu.
* From the Actions menu, click on “Create a Basic Task”
* Give the task a name and description, and then click “Next”
* Choose the trigger for the task. This can be a specific time, a recurring schedule, or an event.
* Specify the action that the task should be performed. In this case, choose “Start a program”
* In the “Program/script” field, enter “PowerShell”
* In the “Add arguments (optional)” field, enter “-File [path to your PowerShell script]”


![run_the_script](https://github.com/mathieu-duverne/auto_login/assets/71874403/91ae87ab-653d-4719-ba37-2671c946283c)


source:

https://www.sharepointdiary.com/2023/08/how-to-run-powershell-script.html#:~:text=To%20run%20a%20PowerShell%20script%20on%20startup%20with%20Windows%20Task,the%20script%20as%20an%20argument.
