# Minecraft World Version Control Script
**Version: 1.0.0**

## Prerequisite
1. **Git**: Must be installed on your machine. [Download here](https://git-scm.com/install/).
2. **GitHub Account**: You need a repository to host your world backups.

## Installation
1. Create a new private repository on GitHub.
2. Open your world's folder, initialize a local repository, and connect it to GitHub:
```bash
git init
git add .
git commit -m "Initial commit (World Backup)"
git branch -M master
git remote add origin [https://github.com/your_username/your_repo_name.git](https://github.com/your_username/your_repo_name.git)
git push -u origin master
```

## Configuration
The script uses the following variables that you need to adjust:

1. `WORLD_PATH`: The full path to your Minecraft world folder.
2. `LAUNCHER_PATH`: The path to the folder containing your Minecraft Launcher.
3. `exe`: The name of the executable.
4. `timeout_in_minutes` (Optional): How often the script checks if the game is still running.
