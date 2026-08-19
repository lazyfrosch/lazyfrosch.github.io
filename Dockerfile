FROM bretfisher/jekyll AS build

COPY . .

RUN jekyll build

FROM nginxinc/nginx-unprivileged:1.31

COPY _nginx/site.conf /etc/nginx/conf.d/default.conf
COPY --from=build /site/_site/ /html
