FROM frolvlad/alpine-glibc

RUN apk add --no-cache bash curl unzip libstdc++ openjdk8
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/ nodejs=14.16.0-r0 npm=14.16.0-r0
RUN npm add -g yarn

RUN curl -O https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
RUN mkdir -p /usr/lib/android-sdk/cmdline-tools
RUN unzip commandlinetools-linux-6858069_latest.zip -d /usr/lib/android-sdk/cmdline-tools
RUN rm commandlinetools-linux-6858069_latest.zip
RUN mv /usr/lib/android-sdk/cmdline-tools/cmdline-tools/ /usr/lib/android-sdk/cmdline-tools/latest/
RUN yes | /usr/lib/android-sdk/cmdline-tools/latest/bin/sdkmanager --licenses
