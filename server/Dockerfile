FROM node:12-alpine

# 앱 디렉터리 생성
WORKDIR /src
COPY . .

# 앱 의존성 설치
# COPY .babelrc ./
ADD .babelrc ./
ADD package*.json ./
# COPY package.json ./

RUN npm install
RUN npm install -g nodemon

# 앱 소스 추가

# CMD ["npm", "start"]
CMD [ "nodemon", "app.js","--exec", "babel-node"]