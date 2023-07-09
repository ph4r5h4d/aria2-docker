# Aria2 Docker Image with RPC Enabled
![LICENSE](https://img.shields.io/github/license/ph4r5h4d/aria2-docker?style=for-the-badge) [![Docker Pull](https://img.shields.io/docker/pulls/ph4r5h4d/aria2-docker?style=for-the-badge)](https://hub.docker.com/r/ph4r5h4d/aria2-docker) 

This Docker image provides an instance of the Aria2 download manager with Remote Procedure Call (RPC) enabled. Aria2 is a lightweight and versatile command-line-based download utility that supports downloading files from various protocols, such as HTTP, FTP, BitTorrent, and Metalink. By using this Docker image, you can easily set up and manage a centralized Aria2 server with RPC capabilities.

## Features

- Aria2 version: 1.36 (Build with docker image and may change)
- Lightweight and efficient download manager
- Supports various protocols and file types
- Remote Procedure Call (RPC) enabled for remote management
- Easy setup and configuration with Docker
- Support for environment variables for configuration

## Usage

To use this Docker image, you need to have Docker installed on your system. If you don't have Docker installed, you can follow the instructions [here](https://docs.docker.com/get-docker/) to install Docker.

### Pull the Docker Image

To pull the Aria2 Docker image from the Docker Hub, run the following command:

```shell
docker pull ph4r5h4d/aria2-docker
```

### Start the Aria2 Container

Once you have pulled the Docker image, you can start the Aria2 container with the following command:

```shell
docker run -d --name aria2 \
    -p 6800:6800 \
    -v [INSERT CONFIGURATION PATH]:/root/.aria2 \
    ph4r5h4d/aria2-docker:latest
```

Make sure to replace the placeholders:
- Optional: `[INSERT CONFIGURATION PATH]` with the path on the host machine where the Aria2 configuration files will be stored (e.g., /opt/aria2-config) 
### Access the Aria2 RPC Interface

Once the container is running, you can access the Aria2 RPC interface via container's port `6800`.

### Configuring Aria2

To customize the Aria2 configuration, you can modify the `aria2.conf` file located in the `aria2/aria2.conf` on the host machine and mount it as a volume inside the docker container or build your own custom image. This file contains various settings that control the behavior of Aria2. Configuration via environment variable will come later.

### Use Cases

The Aria2 download manager with RPC enabled has a wide range of use cases, including but not limited to:

- Downloading large files efficiently using multiple connections
- Managing and queuing downloads remotely using the Aria2 RPC interface
- Automating downloads through scripts or integration with other applications
- Downloading files from various protocols (HTTP, FTP, BitTorrent, etc.) in a centralized manner
- Creating a personal or shared download server for a team or organization

## What's Next

Here are some possible next steps to enhance and extend the functionality of your Aria2 Docker image:

- Configuration via environment variables.

## Support and Contributions

If you encounter any issues with the Aria2 Docker image or have suggestions for improvements, please feel free to [open an issue](https://github.com/ph4r5h4d/aria2-docker/issues) on the GitHub repository. Contributions are also welcome! Fork the repository, make your changes, and submit a pull request.

## License

This Docker image and its associated scripts are licensed under the [GNU General Public License v3.0](LICENSE). Aria2 is an open-source project released under the [GPLv2 License](https://www.gnu.org/licenses/gpl-2.0.en.html). Please make sure you comply with the license terms when using this software.
