FROM frolvlad/alpine-glibc

RUN apk add --no-cache bash curl unzip libstdc++ openjdk8
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/ nodejs=12.18.4-r0
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/ npm=12.18.4-r0
RUN npm add -g yarn

RUN curl -O https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip
RUN mkdir -p /usr/lib/android-sdk/cmdline-tools
RUN unzip commandlinetools-linux-6609375_latest.zip -d /usr/lib/android-sdk/cmdline-tools
RUN rm commandlinetools-linux-6609375_latest.zip
RUN yes | /usr/lib/android-sdk/cmdline-tools/tools/bin/sdkmanager --licenses
