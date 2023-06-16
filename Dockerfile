FROM node:18 AS build

WORKDIR /app

COPY package*.json ./
COPY . .
RUN npm ci --omit=dev

FROM gcr.io/distroless/nodejs:18
ENV NODE_ENV=production

COPY --from=build /app /app
WORKDIR /app
EXPOSE 8080

CMD [ "./server.js" ]