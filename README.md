apt update

apt install -y curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

!! рестарт терминал

nvm install 18

node -v

npx create-strapi@latest --skip-cloud

git clone https://github.com/MichelKukresh/cms.strapi.git

docker build -t strapi-app .

docker run -p 1337:1337 strapi-app