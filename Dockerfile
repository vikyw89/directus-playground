FROM directus/directus:10.x.x

USER root
RUN corepack enable \
 && corepack prepare pnpm@8.7.6 --activate

USER node
RUN pnpm install directus-extension-package-name