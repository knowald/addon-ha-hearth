# ha base image
ARG BUILD_FROM

# Build the architecture-independent web bundle natively. Building it in the
# target architecture under QEMU can stall or crash as the bundle grows.
FROM --platform=$BUILDPLATFORM node:24 AS builder
WORKDIR /app

# ha builder passes BUILD_VERSION from config.yaml, so the addon builds the
# matching ha-hearth release tag instead of whatever master happens to be
ARG BUILD_VERSION

RUN git clone --depth 1 --branch "${BUILD_VERSION}" https://github.com/knowald/ha-hearth . && \
  npm install -g pnpm && \
  pnpm install --frozen-lockfile && \
  pnpm run build && \
  pnpm prune --prod && \
  rm -rf ./data/*

# second stage
FROM $BUILD_FROM
WORKDIR /rootfs

# copy files to /rootfs
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/server.js .
COPY --from=builder /app/package.json .

# copy run
COPY run.sh /

# install node, point the app's data directory at the supervisor volume so the
# dashboard survives updates, and chmod run
RUN apk add --no-cache nodejs-current && \
  ln -s /data /rootfs/data && \
  chmod a+x /run.sh

# set environment
ENV PORT=8099 \
  NODE_ENV=production

CMD [ "/run.sh" ]
