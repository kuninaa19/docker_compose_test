FROM node:12-alpine

# 앱 디렉터리 생성
WORKDIR /usr/local

# 앱 의존성 설치
COPY package*.json ./

RUN npm install && npm cache clean --force
ENV PATH=/usr/local/node_modules/.bin:$PATH

WORKDIR /usr/local/app
COPY src ./src

 CMD ["npm", "start"]