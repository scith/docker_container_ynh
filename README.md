Docker for YunoHost 
----------------------------------------
Warning: This YunoHost app is still in development. Use it at your own risk!

Presentation
------------
What is Docker?
- Docker is a program that "virtualize" applications so that they can be run separately
- Docker allows easy deployment of a wide range of web applications that might not be yet implemented in YunoHost: See http://registry.hub.docker.com

Why would you want to use Docker in YunoHost?
- Because your favorite app is not yet implemented in YunoHost or would be too difficult to implement
- Because you like to keep your apps separated to avoid breaking your YunoHost install

Why would you NOT want to use Docker in YunoHost?
- If you already use Docker and have installed YunoHost in its own container: https://yunohost.org/#/docker_en This app works ONLY if YunoHost is installed in the host (see https://blog.docker.com/2013/09/docker-can-now-run-within-docker/ if you want to try anyway)
- If YOU KNOW WHAT YOU ARE DOING
- If you want a flawless YunoHost experience with Single Sign-On, as Docker containers are not integrated with YunoHost


This YunoHost application installs Docker and allows to create a custom container
--------------------------------------------------------------------------------
- The image can be pulled from the official registry: http://registry.hub.docker.com
- Any options can be passed to the container (eg ports, volumes...)
- The container is manageable through the YunoHost Services page (tested with Debian Jessie & Yunohost 2.2) or with "sudo service container-name start/stop/status"
- The container can be mounted with a dedicated volume from the host
- This app is multi instances, meaning that you can create as many containers as you want
- It is however recommended to install the DockerUI package for a finer management of containers and images: https://github.com/scith/dockerui_ynh
- Adventurous users could try to install the experimental app Shipyard for an even more advanced management of containers: https://github.com/scith/docker_shipyard_ynh

Experimental feature:
- Create a YunoHost app from the container

To be done:
- Backup and restore containers

Do not hesitate to contribute!