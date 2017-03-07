# based on https://registry.hub.docker.com/u/samtstern/android-sdk/dockerfile/ with openjdk-8
FROM openjdk:8

MAINTAINER Ramil Gabdrakhmanov  <ramil.ga>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -yq libc6:i386 libstdc++6:i386 zlib1g:i386 libncurses5:i386 --no-install-recommends && \
    apt-get clean

# Download and install SDK
RUN cd /opt && wget -q https://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O android-sdk.tgz
RUN cd /opt && tar -xvzf android-sdk.tgz
RUN cd /opt && rm -f android-sdk.tgz

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

# Install Android SDK components

# License Id: android-sdk-license-ed0d0a5b
ENV ANDROID_COMPONENTS platform-tools,build-tools-21.1.2,android-21
# License Id: android-sdk-license-5be876d5
ENV GOOGLE_COMPONENTS extra-android-m2repository,extra-google-m2repository

RUN echo y | android update sdk --no-ui --all --filter "${ANDROID_COMPONENTS}" ; \
    echo y | android update sdk --no-ui --all --filter "${GOOGLE_COMPONENTS}"

#COPY android-sdk-linux /opt/android-sdk-linux
#COPY licenses/android-sdk-license ${ANDROID_HOME}
#COPY licenses/android-sdk-preview-license ${ANDROID_HOME}
ENV PATH ${PATH}:/opt/tools

RUN apt-get clean

# Support Gradle
ENV TERM dumb