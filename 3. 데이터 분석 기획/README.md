## 데이터 분석 기획

#### 1) 분석 기획(Planning) : 프로젝트 정의 및 계획 수립

+ 시간에 따른 일본 불매운동의 관심 시각화
+ 현재 일본 불매운동에 대한 긍부정 여론 시각화
+ 일본 불매운동 관련하여 많이 언급된 기업 시각화
+ 일본 불매운동과 관련된 주요 상품 카테고리별 언급량 시각화



#### 2) 데이터 준비(Preparing)

불매운동과 관련된 소셜 반응 및 여론을 확인하는 것이 목적이므로 '불매운동', '불매'를 포함한 트윗 혹은 스토리를 검색하여 수집, '불매', '불매운동'을 포함하지 않더라도 '유니클로', '데상트', '도요타' 등과 같은 불매운동 대상 기업명을 포함하여 수집하여도 좋을 것이다.

*데이터 전처리(Preprocessing)*

+ SNS 상의 글에는 이모티콘이 포함된 글이 많다. 검색과정에서 이모티콘이 생략되어 수집되기 때문에 맥락에 맞지 않게 될 수 있으므로 처리가 필요할 수 있다.
+ 문장으로 된 글을 단어 배열로 변환한다 (KoNLP 패키지를 이용).
+ 오타를 보정한다. 예를 들어, '데상트'를 '대상트'로 표기하거나 '데상ㅌㅡ'라고 쓰여진 것들도 있을 것이다. 이를 보정하여 원래 의미했던 단어로 복원을 시킨다.
+ 트위터의 특성 상 retweet된 글이 많아 중복 카운팅이 될 수 있기 때문에 retweet된 글은 제외한다.
+ 일본 불매운동의 대상이 된 기업들을 조사하여 검색 키워드에 꼭 포함시키도록 한다.

수집된 데이터의 샘플을 직접 살펴보고 어떤 유형의 데이터가 있는지 확인하여 데이터 전처리 방법을 추가한다.



#### 3) 데이터 분석(Analyzing)

2019년 7월부터 데이터를 수집하여 현재까지의 데이터를 수집

1. 주 단위로 일본 불매운동에 대한 언급량 산출 및 선 그래프로 시각화

   => 일본과 관련없는 불매운동 글에 대해서는 확실히 전처리되었다고 가정

2. 일본 불매운동에 여파를 줄 수 있는 사건들과 연관하여 언급량 산출 및 시각화

3. 일본 불매운동 긍부정 여부 조사 => 감정사전을 이용

4. 각 기업들에 대한 긍부정 여부 조사 => 감정사전을 이용

5. 일본 불매운동과 같이 언급된 기업 혹은 상품들을 카테고리화한 뒤 언급량 조사



 데이터 분석을 거친 뒤 데이터 모델링, 시스템 구현, 평가 및 전개 방법을 업데이트하도록 한다.

