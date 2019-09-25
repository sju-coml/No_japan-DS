# 1. 라이브러리 로드
library(stringr)


# 2. 데이터 로드
raw_Nojapan <- read.csv(file.choose())


# 3. EDA
summary(raw_Nojapan)
head(raw_Nojapan)
length(raw_Nojapan$user_id)
length(raw_Nojapan$date)
length(raw_Nojapan$hashtag)
length(raw_Nojapan$X)


# 4. 변수 추출
Nojapan <- data.frame(raw_Nojapan$date)
summary(Nojapan)
head(Nojapan)
str(Nojapan)


# 5. 데이터 정제 1
colnames(Nojapan) = c("date") # 열 이름 바꾸기
Nojapan$date <- as.Date(Nojapan$date, format = "%Y년 %m월 %d일") # date 형태로 바꾸기

summary(Nojapan)
head(Nojapan)
str(Nojapan)


# 6. 데이터 정제 2
Nojapan_unique <- unique(Nojapan$date) # date의 unique 값만 추출
final_Nojapan <- data.frame(Nojapan_unique) # 데이터프레임 만들기


# 7. 데이터 정제 3
# unique 값이 원래 데이터에서 몇 번 나왔나 카운트하기
cnt = 1
for (i in Nojapan_unique){
  sum <- length(which(Nojapan$date == i))
  final_Nojapan$sum[cnt] <- sum
  cnt = cnt + 1
}
final_Nojapan


# 8. 데이터 시각화
plot(final_Nojapan$Nojapan_unique, final_Nojapan$sum)


# 9. 저장
write.csv(final_Nojapan, "C:/MyGithub/SAI-NoJapan/Preprocessed_data/NoJapan_Final.csv")
