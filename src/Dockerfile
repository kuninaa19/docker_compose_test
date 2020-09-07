FROM node:12-alpine

# 앱 디렉터리 생성
WORKDIR /src

# 앱 의존성 설치
COPY .babelrc ./
COPY package*.json ./

RUN npm install
RUN npm install -g nodemon

# 앱 소스 추가
COPY . .

# CMD ["npm", "start"]
CMD [ "nodemon", "app.js","--exec", "babel-node"]