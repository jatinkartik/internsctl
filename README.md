# internsctl
## Description
Introducing **Internsctl**, a versatile and efficient Linux command engineered to streamline system management. This command empowers users to effortlessly retrieve detailed file information, list users, create new users with customizable privileges, and set up 'sudo-only' users for enhanced security. Additionally, it provides comprehensive insights into system memory utilization and CPU information, delivering a holistic view of your system's performance. Simplify system administration and gain quick access to essential system details with **Internsctl**

## Installation

### 1. Clone the Repository

    git clone https://github.com/jatinkartik/internsctl.git
    
### 2. Move Manual to the Man Pages Directory

    cp internsctl.1 /usr/share/man/man1/internsctl.1



### 3. Change to Man Pages Directory

    cd /usr/share/man/man1

### 4. Create Alias

    alias internsctl="./internsctl"

To make the alias permanent, you can add the above line to your shell configuration file (e.g., ~/.bashrc, ~/.bash_profile, or ~/.zshrc).

Now, you are ready to use internsctl!

    internsctl --version
    internsctl cpu getinfo
    internsctl memory getinfo
    internsctl user create <username>
Feel free to adjust the paths and instructions based on your specific setup and preferences.


