Minecraft Server Docker Image
This Docker image provides a convenient way to run both Minecraft Java Edition servers (with multiple Java versions) and Minecraft Bedrock Edition servers using Ubuntu as the base image.

Features
Multiple Java Versions: Includes JDK 8, 11, 17, and 21.
Minecraft Bedrock Edition Support: Base for running Bedrock Edition servers.
Customizable: Easy to configure and extend.
Usage
Running Minecraft Java Edition Server
To run a Minecraft Java Edition server with a specific Java version, use the following command:

bash
复制代码
docker run -d --name minecraft-java \
  -e JAVA_HOME=/jdk/zulu11.74.15-ca-jdk11.0.24-linux_x64 \
  -v /path/to/server/files:/workspace \
  -p 25565:25565 \
  your-docker-image
Replace /path/to/server/files with the path to your Minecraft server files and your-docker-image with the name of your Docker image. You can choose the desired Java version by setting the JAVA_HOME environment variable.

Running Minecraft Bedrock Edition Server
To run a Minecraft Bedrock Edition server, use the following command:

bash
复制代码
docker run -d --name minecraft-bedrock \
  -v /path/to/bedrock/server/files:/workspace \
  -p 19132:19132/udp \
  your-docker-image
Replace /path/to/bedrock/server/files with the path to your Bedrock server files and your-docker-image with the name of your Docker image.

Available Java Versions
JDK 8: /jdk/zulu8.80.0.17-ca-jdk8.0.422-linux_x64
JDK 11: /jdk/zulu11.74.15-ca-jdk11.0.24-linux_x64
JDK 17: /jdk/zulu17.52.17-ca-jdk17.0.12-linux_x64
JDK 21: /jdk/zulu21.36.17-ca-jdk21.0.4-linux_x64
Customization
You can customize the Docker image by modifying the Dockerfile and rebuilding it. To add additional software or configurations, edit the Dockerfile as needed.

Contributing
If you have suggestions or improvements, feel free to open an issue or submit a pull request on GitHub.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For questions or support, please contact duncai.

