Docker for YunoHost 
----------------------------------------
Warning: This YunoHost app is still in development. Use it at your own risk!

This YunoHost application installs Docker and allows to create a custom container
- The image can be pulled from the official registry: http://registry.hub.docker.com
- Any options can be passed to the container (eg ports, volumes...)
- The container is manageable through the YunoHost Services page (tested with Debian Jessie & Yunohost 2.2) or with "sudo service container-name start/stop/status"
- The container can be mounted with a dedicated volume from the host
- This app is multi instances, meaning that you can create as many containers as you want
- It is however recommended to install the DockerUI package for a finer management of containers and images: https://github.com/scith/dockerui_ynh
- Adventurous users could try to install the experimental app Shipyard for an even more advanced management of containers: https://github.com/scith/docker_shipyard_ynh

Experimental feature:
- Create a YunoHost app from the container

Do not hesitate to contribute!