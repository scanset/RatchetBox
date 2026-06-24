@echo off
rem launch c3_pos via the in-memory loader (Smart App Control blocks the bare exe)
powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\curti\Documents\ollama_ICM_Code\RatchetBox\dotnet4-x\tools\run_app.ps1" -Exe "C:\Users\curti\Documents\ollama_ICM_Code\RatchetBox\dotnet4-x\workspaces\c3_pos\dist\c3_pos.exe"
