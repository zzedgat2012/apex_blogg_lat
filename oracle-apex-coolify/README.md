# Oracle APEX Coolify Project

This project provides a Docker-based setup for Oracle APEX using Coolify and Traefik as a reverse proxy. It includes scripts for automating the installation and configuration of Oracle APEX and ORDS.

## Project Structure

```
oracle-apex-coolify
├── docker-compose.yml         # Defines the services, networks, and volumes for the Docker containers
├── scripts                    # Contains installation and startup scripts
│   ├── unattended_apex_install_23c.sh  # Automates the installation of Oracle APEX
│   └── 00_start_apex_ords_installer.sh  # Starts the ORDS service after APEX installation
├── data                       # Directory for persistent data
│   └── .gitkeep               # Keeps the data directory in version control
├── logs                       # Directory for log files
│   └── .gitkeep               # Keeps the logs directory in version control
└── README.md                  # Documentation for the project
```

## Setup Instructions

1. **Clone the Repository**: Clone this repository to your local machine.

2. **Docker Installation**: Ensure that Docker and Docker Compose are installed on your system.

3. **Configuration**: Update the `docker-compose.yml` file if necessary to adjust environment variables or port mappings.

4. **Run the Project**: Navigate to the project directory and run the following command to start the services:
   ```
   docker-compose up -d
   ```

5. **Access Oracle APEX**: Once the containers are running, you can access Oracle APEX at `https://apex.blogg.lat`.

## Usage

- The `unattended_apex_install_23c.sh` script will automatically install Oracle APEX when the container starts.
- The `00_start_apex_ords_installer.sh` script will start the ORDS service after the installation is complete.

## Logging

Logs for the application can be found in the `logs` directory. Ensure to check these logs for any issues during startup or operation.

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements for this project.