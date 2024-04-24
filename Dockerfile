FROM node:20-alpine AS base
RUN apk add --no-cache bash curl
RUN npm add -g --no-fund pnpm
RUN mkdir /app
COPY package.json /app
COPY pnpm-lock.yaml /app
# COPY prisma /app
WORKDIR /app

FROM base AS build
RUN pnpm install -s --prefer-offline --prefer-frozen-lockfile
# RUN pnpm prisma generate
COPY . /app
# RUN cp .env.example .env
RUN pnpm check
RUN pnpm build
# RUN rm .env

FROM base AS production
# RUN pnpm install --production -s --ignore-scripts --prefer-offline --prefer-frozen-lockfile --shamefully-hoist
COPY --from=build /app/node_modules /app/node_modules
# COPY --from=build /app/node_modules/@prisma /app/node_modules/@prisma
COPY --from=build /app/build /app/build
EXPOSE 3000
CMD [ "node", "build/index.js" ]
