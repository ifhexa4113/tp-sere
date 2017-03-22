# tp-sere

Scripts for a demonstrations of various SQL related exploits and password cracking

## Installing 
It is strongly advised to work on this project in a Linux VM. We are not responsible for any harm the installation script could cause on your computer.

Run `sudo commandes.sh` in the root of this directory on a standard Linux installation. The script assume you are on a Debian like distribution and you have access to `apt-get` and are connected to the internet.

If the install process is sucessfull, you should be able to reach [localhost/index.php](http://localhost/index.php).
## Working with the project files
It is advised to work on the project files in this folder, and not in the installation folders. To update the installed scripts (rerun SQL scripts and copy all the content of the `www` folder into `/usr/www`), simply run `sudo ./commands.sh -s`. This command will skip the installation process of the script and just update the database and files.

## Testing the scripts
