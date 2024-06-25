@echo off

set argCount=0
for %%x in (%*) do Set /A argCount+=1

if %argCount% NEQ 1 (
  echo Must have exactly 1 arguments
  exit /b 1
)

cmd /c rmdir cp
cmd /c mklink /D cp cp%1
