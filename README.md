# alpine-react-native-android
There are many challenges in getting an Android project built inside a lightweight Docker container. This is an attempt to create a minimal Docker image for building React Native based Android projects using Alpine Linux. This image is based on [Alpine Linux image with glibc](https://hub.docker.com/r/frolvlad/alpine-glibc) by [frolvlad](https://hub.docker.com/u/frolvlad) published on DockerHub.

# Usage Example
This image can be used as a base image in your Dockerfile,

`FROM docker.pkg.github.com/mmafrar/alpine-react-native-android/alpine-react-native-android:latest`

`FROM mmafrar/alpine-react-native-android:latest`

Else you can directly pull the Docker image,

`docker pull docker.pkg.github.com/mmafrar/alpine-react-native-android/alpine-react-native-android:latest`

`docker pull mmafrar/alpine-react-native-android:latest`
