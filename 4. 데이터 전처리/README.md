# 1. Raw data 갯수
 - 불매운동 : 9650개
 - NoJapan : 9561개

<br>
<hr>
<br>

# 2. Raw data 설명
## (1) 세부 설명
 - 인스타그램에서 해쉬태그 키워드를 포함한 데이터를 크롤링 했습니다.
 - 데이터는 총 4개의 열로 ['user_id', 'date', 'hashtag', 'total']로 이뤄져 있습니다.
 - user_id : 인스타그램 유저 아이디
 - date : 게시 일자
 - hashtag : 게시물의 모든 해쉬태그
 - total : 종합

<br>

## (2) 수집 기간
 - 불매운동 : 2016년 08월 15일 ~ 2019년 09월 16일
 - NoJapan : 2012년 08월 17일 ~ 2019년 09월 17일


<br>
<hr>
<br>

# 3. 데이터 전처리
 - 결측치 제거
 - 이상치 수정
 - 중복값 제거
 - Outlier 처리
 - 열 추가 및 열 통일
 - 개인정보 * 로 가리기
 - 마지막 열 제거
 - 필터링, 날짜별로 오름차순 정리
 - 색 구분
 - 행 고정
 - 날짜별 키워드 언급 횟수 카운트하기
