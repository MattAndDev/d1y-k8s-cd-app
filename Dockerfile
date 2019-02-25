FROM node:10-alpine
COPY index.js ./
EXPOSE 3000
ARG CI_COMMIT_SHA=null
ENV CI_COMMIT_SHA=$CI_COMMIT_SHA
CMD [ "node", "index.js" ]
