# Selenium Chrome Debug Docker Image with Hostfile Support for Custom Domains

When performing testing through Selenium containers in a local environment, it is often necessary to have domain names used in local development resolve by the Selenium container. This Docker image extends the [selenium/standalone-chrome-debug](https://hub.docker.com/r/selenium/standalone-chrome-debug/) image to dynamically set specified domain names to the host machine.

## Usage

Supply `MAP_DOMAINS` environment variable with a semi-colon delimited list of domain names to map to the Docker host IP address.

Examples:

```bash
# Single domain:
docker run --init -it -e "MAP_DOMAINS=example.com" codycraven/selenium-chrome-debug-hostfile

# Multiple domains:
docker run --init -it -e "MAP_DOMAINS=example.com;another.example.com;yet-another-domain.example.com" codycraven/selenium-chrome-debug-hostfile
```

Since this image extends `selenium/standalone-chrome-debug`, all documentation that relates to that image (including VNC support) are supported. See the [Selenium documentation](https://github.com/SeleniumHQ/docker-selenium) for more information.