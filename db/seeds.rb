# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#공지사항 seed
Notice.create(title:"[공지사항]안녕하세요! 한정입니다",content:"재판의 전심절차로서 행정심판을 할 수 있다. 행정심판의 절차는 법률로 정하되, 사법절차가 준용되어야 한다. 제2항과 제3항의 처분에 대하여는 법원에 제소할 수 없다. 모든 국민은 사생활의 비밀과 자유를 침해받지 아니한다. 모든 국민은 법 앞에 평등하다. 누구든지 성별·종교 또는 사회적 신분에 의하여 정치적·경제적·사회적·문화적 생활의 모든 영역에 있어서 차별을 받지 아니한다.

헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다. 모든 국민은 법률이 정하는 바에 의하여 공무담임권을 가진다. 헌법재판소는 법률에 저촉되지 아니하는 범위안에서 심판에 관한 절차, 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 여자의 근로는 특별한 보호를 받으며, 고용·임금 및 근로조건에 있어서 부당한 차별을 받지 아니한다.

대법원은 법률에 저촉되지 아니하는 범위안에서 소송에 관한 절차, 법원의 내부규율과 사무처리에 관한 규칙을 제정할 수 있다. 모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다. 대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 모든 국민은 법률이 정하는 바에 의하여 국가기관에 문서로 청원할 권리를 가진다.")
Notice.create(title:"[공지사항]안녕하세요! 이경용입니다.",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]안녕하세요! 손아람입니다.",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]안녕하세요! 채민균입니다.",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")
Notice.create(title:"[공지사항]안녕하세요! 한정입니다.",content:"국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다. 형사피고인은 유죄의 판결이 확정될 때까지는 무죄로 추정된다.

행정각부의 설치·조직과 직무범위는 법률로 정한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다.")

#item seed
Item.create(name:"대단히좋은아이템1", price:"102030", material:"나무", period:"1일~2일", user_id:1)
Item.create(name:"대단히좋은아이템2", price:"130", material:"금속", period:"1일~2일", user_id:1)
Item.create(name:"좋은아이템3", price:"5030", material:"실", period:"1일~2일", user_id:1)
Item.create(name:"대단한아이템4", price:"10", material:"끈", period:"1일~2일", user_id:1)
Item.create(name:"대단히좋은아이템5", price:"911110", material:"없음", period:"1일~2일", user_id:1)

#prize seed
UserPrize.create(prize_name:"대상",contest_name:"서울시 이경용배 그림그리기",prize_date:Time.now,user_id:1)
UserPrize.create(prize_name:"은상",contest_name:"서울시 한정배 두부그리기",prize_date:"1992-03-25",user_id:1)
UserPrize.create(prize_name:"미래로나아가자상",contest_name:"아람배 아람만들기",prize_date:"2002-06-11",user_id:1)
UserPrize.create(prize_name:"대상",contest_name:"민균배 오버워치대회",prize_date:"2013-06-11",user_id:1)

#activity seed
MainActivity.create(name:"도자", skill_part:"디자인", percentage:85,user_id:1)
MainActivity.create(name:"유리", skill_part:"디자인", percentage:15,user_id:1)
MainActivity.create(name:"귀금속", skill_part:"제작", percentage:35,user_id:1)
MainActivity.create(name:"유리", skill_part:"제작", percentage:90,user_id:1)

#flea seed
Flea.create(name:"라밍플리마켓",application_start_date:"2016-08-20",application_end_date:"2016-08-20",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-20",event_end_date:"2016-08-25",entrance_fee:10000,poster_url:"poster.png",user_id:1)
Flea.create(name:"라밍한강마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-18",number_of_recruitment:10,remark:"한강물따뜻해",city_place:"서울",detail_place:"한강",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:10000,poster_url:"gangposter.jpg",user_id:1)
Flea.create(name:"라밍제주마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"제주",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍인천마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"인천",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍울산마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"울산",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍경기마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"경기",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍인천마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"인천",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍충남마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"충남",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍경남마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"경남",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍전북마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"전북",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
Flea.create(name:"라밍광주마켓",application_start_date:"2016-08-18",application_end_date:"2016-08-29",number_of_recruitment:10,remark:"천안개죠아",city_place:"광주",detail_place:"충남천안시",event_start_date:"2016-08-20",event_end_date:"2016-08-24",entrance_fee:100000,poster_url:"gangposter.jpg",user_id:2)
