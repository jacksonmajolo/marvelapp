FROM cirrusci/flutter:stable

ENV FLUTTER_WEB_PORT="8090"
ENV FLUTTER_DEBUG_PORT="42000"
ENV FLUTTER_EMULATOR_NAME="flutter_emulator"

COPY .docker/scripts/entrypoint.sh /usr/local/bin/
COPY .docker/scripts/flutter-android-emulator.sh /usr/local/bin/flutter-android-emulator

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]