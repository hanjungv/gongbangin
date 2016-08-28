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
Notice.create(title:"[공지사항]안녕하세요! 사이트가 오픈했습니다.",content:"재판의 전심절차로서 행정심판을 할 수 있다. 행정심판의 절차는 법률로 정하되, 사법절차가 준용되어야 한다. 제2항과 제3항의 처분에 대하여는 법원에 제소할 수 없다. 모든 국민은 사생활의 비밀과 자유를 침해받지 아니한다. 모든 국민은 법 앞에 평등하다. 누구든지 성별·종교 또는 사회적 신분에 의하여 정치적·경제적·사회적·문화적 생활의 모든 영역에 있어서 차별을 받지 아니한다.

헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다. 모든 국민은 법률이 정하는 바에 의하여 공무담임권을 가진다. 헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다.

대법원은 법률에 저촉되지 아니하는 범위안에서 소송에 관한 절차, 법원의 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다. 대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 모든 국민은 법률이 정하는 바에 의하여 국가기관에 문서로 청원할 권리를 가진다.")
Notice.create(title:"[공지사항]2016년 8월 서비스 안내",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]불편사항에 관해서..",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]8월 30일 서버점검 안내",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]9월 20일 서비스 종료 안내",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")

#item seed
Item.create(name:"대단히좋은아이템1", price:"102030", material:"나무", classification:"목/죽세", period:"1일~2일", user_id:1)
Item.create(name:"대단히좋은아이템2", price:"130", material:"금속", classification:"석/금속", period:"1일~2일", user_id:1)
Item.create(name:"좋은아이템3", price:"5030", material:"실", classification:"섬유", period:"1일~2일", user_id:1)
Item.create(name:"대단한아이템4", price:"10", material:"끈", classification:"섬유", period:"1일~2일", user_id:1)
Item.create(name:"대단히좋은아이템5", price:"911110", material:"없음", classification:"모름", period:"1일~2일", user_id:1)

#prize seed
UserPrize.create(prize_name:"대상",contest_name:"서울시 이경용배 그림그리기",prize_date:Time.now,user_id:12)
UserPrize.create(prize_name:"은상",contest_name:"서울시 한정배 두부그리기",prize_date:"1992-03-25",user_id:12)
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

#flea seed
Flea.create(name:"라밍플리마켓",application_start_date:"2016-08-20",application_end_date:"2016-08-20",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-24",event_end_date:"2016-08-25",entrance_fee:10000,poster_url:"poster.png",user_id:3,join_type:'선착순')
Flea.create(name:"라밍한강마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-18",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-24",event_end_date:"2016-08-24",entrance_fee:10000,poster_url:"gangposter.jpg",user_id:3,join_type:'심사')
Flea.create(name:"한강마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-31",number_of_recruitment:10,remark:"한강괴물",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-24",event_end_date:"2016-08-24",entrance_fee:10000,poster_url:"gangposter.jpg",user_id:3,join_type:'심사')
Flea.create(name:"팔려면팔아봐",application_start_date:"2016-08-18",application_end_date:"2016-08-31",number_of_recruitment:10,remark:"한강괴물",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-24",event_end_date:"2016-08-24",entrance_fee:10000,poster_url:"gangposter.jpg",user_id:3,join_type:'심사')
Flea.create(name:"라밍플리마켓",application_start_date:"2016-08-20",application_end_date:"2016-09-20",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-20",event_end_date:"2016-08-25",entrance_fee:10000,poster_url:"poster.png",user_id:3)
Flea.create(name:"라밍한강마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-18",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:10000,poster_url:"gangposter.jpg",user_id:3)
Flea.create(name:"라밍제주마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"제주",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-29",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:4)
Flea.create(name:"라밍인천마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"인천",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-30",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:5)
Flea.create(name:"라밍울산마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-23",number_of_recruitment:10,remark:"천안개죠아",city_place:"울산",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-31",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:5)
Flea.create(name:"라밍경기마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-23",number_of_recruitment:10,remark:"천안개죠아",city_place:"경기",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-01",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:4)
Flea.create(name:"라밍인천마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-23",number_of_recruitment:10,remark:"천안개죠아",city_place:"인천",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-02",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:6)
Flea.create(name:"라밍충남마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-23",number_of_recruitment:10,remark:"천안개죠아",city_place:"충남",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-09-29",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍경남마켓",application_start_date:"2016-08-18",application_end_date:"2016-09-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"경남",detail_place:"충남천안시",event_start_date:"2016-08-27",event_end_date:"2016-08-30",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍전북마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"전북",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍광주마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"광주",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
