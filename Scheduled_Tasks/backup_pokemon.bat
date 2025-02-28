@echo off
pg_dump -U postgres -d pokemon_db -F c -f "C:\Users\SkyBerry\Documents\Pokemon_Database\Database_Backups\pokemon_backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%.backup"

