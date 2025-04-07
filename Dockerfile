# 최신 LTS 버전의 경량 이미지 사용
FROM node:20-alpine

# 작업 디렉토리 지정
WORKDIR /app

# 종속성 관련 파일만 먼저 복사
COPY package.json yarn.lock ./

# 의존성 설치
RUN yarn install --frozen-lockfile

# 전체 소스 복사
COPY . .

# 개발용 환경 변수 설정
ENV NODE_ENV=development

# 개발 서버 실행
CMD ["yarn", "dev"]
