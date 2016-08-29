#User
##master
User.create(:email => 'master@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '대장', :level => 'master',
:name=>"손아람", :phone_number=>"01045726873",:introduction=>"안녕하세요! 마스터입니다. 공방인 많이 사용해주세요~", :activity_area =>"서울, 부산",:tier=>"red", :score=>"0", :address=>"천안시")
##Planner
User.create(:email => 'planner1@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '이걍', :level => 'planner',
:name=>"이경용", :phone_number=>"01045726873",:introduction=>"솔직히 내가 세상에서 제일 잘생긴듯..", :activity_area =>"서울, 부산",:tier=>"red", :score=>"1030", :address=>"인천광역시")
User.create(:email => 'planner2@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '정입니다', :level => 'planner',
:name=>"한정", :phone_number=>"01045726873",:introduction=>"네이버 가고싶다..", :activity_area =>"서울, 부산",:tier=>"purple", :score=>"20", :address=>"낙성대역")
User.create(:email => 'planner3@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '민균입니다', :level => 'planner',
:name=>"채민균", :phone_number=>"01045726873",:introduction=>"안녕하세요! 채민균입니다. 저는 운전을 아주잘해요", :activity_area =>"샌프란시스코",:tier=>"orange", :score=>"880", :address=>"잠실역")
User.create(:email => 'planner4@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '승화니', :level => 'planner',
:name=>"백승환", :phone_number=>"01045726873",:introduction=>"승환이 어디서 뭐하냐", :activity_area =>"서울",:tier=>"red", :score=>"1230", :address=>"인하대근처 거주")
User.create(:email => 'planner5@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '민지', :level => 'planner',
:name=>"김민지", :phone_number=>"01045726873",:introduction=>"조이의 희망 미래", :activity_area =>"충북",:tier=>"red", :score=>"1020", :address=>"서울시")
##standby
User.create(:email => 'standby1@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '린규', :level => 'standby',
:name=>"박인규", :phone_number=>"01045726873",:introduction=>"감정기복이 심해요, 오버워치 하실래요?", :activity_area =>"서울, 부산",:tier=>"red", :score=>"1340", :address=>"서울시", :brand_place=>"서울시 관악구 인헌동 196-54호", :brand_number=>"14923123142", :brand=>"한정상업")
User.create(:email => 'standby2@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '추', :level => 'standby',
:name=>"추교정", :phone_number=>"01045726873",:introduction=>"추", :activity_area =>"서울, 부산",:tier=>"navy", :score=>"100", :address=>"인헌동", :brand_place=>"서울특별시 양천구 목동동로 233-1, 501 (목동, 드림타워)", :brand_number=>"1178140065", :brand=>"danawa")
User.create(:email => 'standby3@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '송이야힘내라', :level => 'standby',
:name=>"최송이", :phone_number=>"01045726873",:introduction=>"빵 하나무라", :activity_area =>"서울, 부산",:tier=>"blue", :score=>"200", :address=>"독도", :brand_place=>"서울시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)", :brand_number=>"2208183676", :brand=>"auction")
User.create(:email => 'standby4@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '찬미', :level => 'standby',
:name=>"윤찬미", :phone_number=>"01045726873",:introduction=>"ㅎㅇ", :activity_area =>"서울, 부산",:tier=>"purple", :score=>"50", :address=>"제주시", :brand_place=>"서울시 관악구 인헌동 196-54호", :brand_number=>"14923123142", :brand=>"아람상업")
User.create(:email => 'standby5@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '상윤이형', :level => 'standby',
:name=>"이상윤", :phone_number=>"01045726873",:introduction=>"안녕하세요! . 공방인 많이 사용해주세요~", :activity_area =>"서울, 부산",:tier=>"red", :score=>"1000", :address=>"제주시", :brand_place=>"우주어딘가", :brand_number=>"14923123142", :brand=>"(주)씨티피")
##seller
User.create(:email => 'seller1@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '진서',:level => 'seller',
:name=>"김진서", :phone_number=>"01045726873",:introduction=>"인하대학교 3학년에 재학중인 김진서입니다. 저는 작은 공방을 운영하고 있습니다.", :activity_area =>"서울, 부산",:tier=>"purple", :score=>"20", :address=>"서울시")
User.create(:email => 'seller2@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '수화니', :level => 'seller',
:name=>"박수환", :phone_number=>"01045726873",:introduction=>"안녕하세요 박수환입니다. 동대문 옆 작은 공방을 운영하고 있어요", :activity_area =>"서울, 부산",:tier=>"yellow", :score=>"700", :address=>"서울시")
User.create(:email => 'seller3@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '강오형', :level => 'seller',
:name=>"이강호", :phone_number=>"01045726873",:introduction=>"이 사이트를 만들어준 분이십니다. 강호형 덕분에 만들었어요", :activity_area =>"서울, 부산",:tier=>"red", :score=>"9990", :address=>"서울시")
User.create(:email => 'seller4@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '팥', :level => 'seller',
:name=>"천민호", :phone_number=>"01045726873",:introduction=>"씨티피의 자랑 씨티피의 희망 씨티피의 얼굴마담 씨티피의 빛과 소금 씨티피의 유일무의한 존재 2015년 회장님", :activity_area =>"서울, 부산",:tier=>"red", :score=>"1240", :address=>"서울시")
User.create(:email => 'seller5@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '주연', :level => 'seller',
:name=>"원주현", :phone_number=>"01045726873",:introduction=>"nhn에 거주하고 있습니다. 현재 페이코를 만들고 있어요. 취미로 목걸이를 만듭니다", :activity_area =>"서울, 부산",:tier=>"green", :score=>"540", :address=>"서울시")
User.create(:email => 'seller6@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '주현', :level => 'seller',
:name=>"원주연", :phone_number=>"01045726873",:introduction=>"nhn에 거주하고 있습니다. 현재 페이코를 만들고 있어요. 취미로 반지를 만듭니다", :activity_area =>"서울, 부산",:tier=>"green", :score=>"640", :address=>"서울시")
User.create(:email => 'seller7@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '진혁', :level => 'seller',
:name=>"원진혁", :phone_number=>"01045726873",:introduction=>"nhn에 거주하고 있습니다. 현재 페이코를 만들고 있어요. 취미로 강아지 간식을 만듭니다", :activity_area =>"서울, 부산",:tier=>"purple", :score=>"10", :address=>"서울시")
User.create(:email => 'seller8@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '지닐', :level => 'seller',
:name=>"남진일", :phone_number=>"01045726873",:introduction=>"쿠팡에 있어요, 참여할 플리마켓을 찾고 있습니다.", :activity_area =>"서울, 부산",:tier=>"purple", :score=>"40", :address=>"서울시")
User.create(:email => 'seller9@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '유니', :level => 'seller',
:name=>"유재윤", :phone_number=>"01045726873",:introduction=>"엘지전자...엘지....전자.....", :activity_area =>"서울, 부산",:tier=>"orange", :score=>"840", :address=>"서울시")
User.create(:email => 'seller10@gmail.com', :password => 'abcabc', :password_confirmation => 'abcabc', :nickname => '재피리형', :level => 'seller',
:name=>"유재필", :phone_number=>"01045726873",:introduction=>"포항에서 활동하는 메이커 입니다. 향초나 팔찌를 만들어서 팔아요", :activity_area =>"포항",:tier=>"yellow", :score=>"650", :address=>"서울시")




#공지사항 seed
Notice.create(title:"[공지사항]안녕하세요! 사이트가 오픈했습니다.",content:"플래너와 셀러들의 매칭을 편리하게 해주는 사이트를 오픈했습니다.
플래너분들은 셀러들의 지원을 편하게 받을 수 있을 뿐만 아니라 셀러들의 정보를 손쉽게 확인하실 수 있습니다.
셀러분들은 여러 플리마켓의 정보를 한눈에 확인 하실 수 있으며, 입력되어 있는 정보로 매번 입력할 필요 없이 편리하게 지원하실 수 있습니다.")

Notice.create(title:"[공지사항]2016년 9월 서비스 안내",content:"플래너분들과 셀러분들의 신뢰성을 높이기 위해 셀러분들의 아이템 제작 과정에 대한 기능을 추가할 예정입니다.
플래너분들이 제작 과정에 대해 알고 싶어 하는 목소리가 많아 추가하게 되었습니다.
")
Notice.create(title:"[공지사항]8월 30일 서버점검 안내",content:"8월 30일 새벽 2시~4시 서버 점검이 있을 예정입니다.
약 두시간 동안 서버 접속을 제한하오니 양해 부탁드립니다.
")
Notice.create(title:"[공지사항]9월 10일 서비스 종료 안내",content:"9월 20일 서비스를 종료할 예정입니다. 많은 분들이 이용해 주셨는데 서비스를 마감하게 되어
저희도 아쉬울 따름입니다. 많은 여러분에 감사 말씀 드리면서 저희는 이만 물러나겠습니다.
")

#prize seed
UserPrize.create(prize_name:"대상",contest_name:"서울시 이경용배 그림그리기",prize_date:Time.now,user_id:12)
UserPrize.create(prize_name:"은상",contest_name:"서울시 한정배 두부그리기",prize_date:"1992-03-25",user_id:12)
UserPrize.create(prize_name:"은상",contest_name:"이두희배 그림그리기",prize_date:"1992-03-25",user_id:12)
UserPrize.create(prize_name:"은상",contest_name:"멋쟁이사자처럼 해커톤",prize_date:"1992-03-25",user_id:12)
UserPrize.create(prize_name:"미래로나아가자상",contest_name:"아람배 아람만들기",prize_date:"2002-06-11",user_id:13)
UserPrize.create(prize_name:"대상",contest_name:"민균배 오버워치대회",prize_date:"2013-06-11",user_id:14)
UserPrize.create(prize_name:"밥상",contest_name:"천안시 천하장사대회",prize_date:"2002-06-11",user_id:15)
UserPrize.create(prize_name:"대상",contest_name:"부산시 수영대회",prize_date:"2002-06-11",user_id:15)
UserPrize.create(prize_name:"진상",contest_name:"인헌동 헌혈대회",prize_date:"2002-06-11",user_id:17)
UserPrize.create(prize_name:"대상",contest_name:"아람배 아람만들기",prize_date:"2002-06-11",user_id:18)

#activity seed
MainActivity.create(name:"도자", skill_part:"디자인", percentage:85,user_id:12)
MainActivity.create(name:"유리", skill_part:"디자인", percentage:15,user_id:12)
MainActivity.create(name:"귀금속", skill_part:"제작", percentage:35,user_id:12)
MainActivity.create(name:"유리", skill_part:"제작", percentage:90,user_id:12)

MainActivity.create(name:"도자", skill_part:"디자인", percentage:85,user_id:13)
MainActivity.create(name:"유리", skill_part:"디자인", percentage:15,user_id:13)
MainActivity.create(name:"귀금속", skill_part:"제작", percentage:35,user_id:14)
MainActivity.create(name:"유리", skill_part:"제작", percentage:90,user_id:15)

MainActivity.create(name:"도자", skill_part:"디자인", percentage:85,user_id:16)
MainActivity.create(name:"유리", skill_part:"디자인", percentage:15,user_id:16)
MainActivity.create(name:"귀금속", skill_part:"제작", percentage:35,user_id:18)
MainActivity.create(name:"유리", skill_part:"제작", percentage:90,user_id:17)



#Item
Item.create(name:"핸드폰고리", price:5000, material:"가죽", period:"1일~2일", classification:"가죽", url:"핸드폰고리.jpg", user_id:12)
Item.create(name:"반지", price:35000, material:"은", period:"1일~2일", classification:"귀금속보석", url:"반지.jpg", user_id:12)
Item.create(name:"벨트", price:2000, material:"가죽", period:"3일~7일", classification:"가죽", url:"벨트.jpg", user_id:12)
Item.create(name:"가죽팔찌", price:25000, material:"가죽", period:"1일~2일", classification:"가죽", url:"가죽팔찌.jpg", user_id:12)
Item.create(name:"수제가구", price:50000, material:"나무", period:"3일~7일", classification:"목/죽세", url:"수제가구.jpg", user_id:12)
Item.create(name:"카드지갑", price:10000, material:"가죽", period:"1일~2일", classification:"가죽", url:"카드지갑.jpg", user_id:12)
Item.create(name:"에코백", price:10000, material:"섬유", period:"3일~7일", classification:"천", url:"에코백.jpg", user_id:12)
