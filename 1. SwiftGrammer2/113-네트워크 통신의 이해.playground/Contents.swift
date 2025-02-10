/*
 (167강)
 네트워크 통신의 이해
 
 
 개인 기기로 인터넷을 접속하면 정보를 얻을 수 있다
 - 이는 어딘가에 있는 (서버로 동작을 하도록 프로그래밍한)컴퓨터에 접속을 하게 되는것이다
 - 유저 = client라고 한다
 
 인터넷을 어떻게 접근하고 사용 가능한가?
 - 여러 프로토콜이 있는데 이를 통합해서 부를 때 TCP/IP 프로토콜이라고 부른다
 - 여러 프로토콜(약속)들의 조합을 통해서 인터넷에 접속 가능하다
 
 http프로토콜
 - 처음 인터넷 생겨났을 때는 문서를 전달하는 역할이었으나
 - 현재는 이미지, 영상 등등 json 데이터 형태를 포함해서 모든 형태의 데이터 전송이 가능하도록 약속이 바뀌었다
 
 http프로토콜
 - 앱 단위에서 다루고 있는 기술이다
 - 인터넷: 편지를 주고받는것과 상당히 유사하다
 
 request
 - 편지를 어떻게 쓰고 주고 받을지에 대해서 알아야한다
 - 반드시 request를 올바른 형식으로 작성해야한다
 

 http 프로토콜이 현재 인터넷 세계를 지배하고 있기 때문에 그 형식에 맞게 앱에서 작성 해야한다
 
 
 헤더 필드
 - 필요한 이유: 인터넷에서 데이터를 주고받을 때 반드시 특정 형식의 편지지를 써라고 http프로토콜에서 약속이 된거다
 */
