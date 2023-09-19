-- Inserting data into the 'host' table
INSERT INTO host(email, password, name, birth, phone_number, address, image_path, rate, explanation)
VALUES
    ('host1@naver.com', 'test', '양춘식', '000101', '01012345678', '전라북도 임실군', '이미지 경로', '4.91', '양춘식 호스트 설명'),
    ('host2@gmail.com', 'test', '김준범', '010203', '01098765432', '서울시 강남구 2층', '이미지 경로', '4.75', '김준범 호스트 설명'),
    ('host3@yahoo.com', 'test', '정은주', '940506', '01055556666', '대구시 중구 3층', '이미지 경로', '4.88', '정은주 호스트 설명'),
    ('host4@gmail.com', 'test', '임지영', '870809', '01012345678', '부산시 해운대구 4층', '이미지 경로', '4.95', '임지영 호스트 설명'),
    ('host5@inha.edu', 'test', '임춘식', '960421', '01012345678', '인천시 미추홀구 1층', '이미지 경로', '4.31', '임춘식 호스트 설명');

-- Inserting data into the 'guest' table
INSERT INTO guest(email, password, name, birth, phone_number, address, image_path, reviews, worked_days, earnings)
VALUES
    ('guest1@gmail.com', 'test', '손영희', '900101', '01011112222', '서울시 송파구 5층', '이미지 경로', 25, 210, 580),
    ('guest2@yahoo.com', 'test', '김철수', '910202', '01033334444', '부산시 동래구 6층', '이미지 경로', 19, 185, 450),
    ('guest3@hotmail.com', 'test', '이지민', '920303', '01055557777', '대전시 유성구 7층', '이미지 경로', 31, 250, 680);

-- Inserting data into the 'hashtag' table
INSERT INTO hashtag(host_id, content)
VALUES
    (1, '전라북도 토박이'),
    (1, '체험형 파밍 홀리데이'),
    (2, '강원도 산골 청년'),
    (2, '스키강사 자격증 보유'),
    (3, '13년차 해녀'),
    (3, '제주 관광 가이드'),
    (4, '양식장 운영'),
    (4, '바다 낚시 투어'),
    (5, '토마토로 건물주'),
    (5, '온라인 마켓 운영중');

-- Inserting data into the 'farming_holiday' table
INSERT INTO farming_holiday(name, location, address, pay, pay_months, main_image_path, detail_image_path, recruit_start_date,
                            recruit_end_date, work_start_date, work_end_date, work_weekday, work_time, recruit_number,
                            apply_number, recruit_status, explanation, lat, lon, rate, host_id)
VALUES
    ('임실치즈마을 치즈공업', '전라북도 임실군', '전라북도 임실군 임실읍 치즈마을 1길 4 임실치즈마을', 220, 7, '메인 이미지 주소',
    '디테일 이미지 주소', '2023-03-06', '2023-09-01', '2023-09-01', '2024-03-01', '주5일', '9:30-15:00 (12:00-13:00 점심)',
    4, 3, 'COMPLETED', '# 임실치즈마을 리코타치즈 유통', '38', '127', 4.55, 1),
    ('무화과 농장 체험', '전라북도 군산시', '전라북도 군산시 대야면 무화과로 456', 190, 6, '메인 이미지 주소',
    '디테일 이미지 주소', '2023-04-20', '2023-10-31', '2023-11-05', '2024-03-01', '주4일', '9:30-16:30 (12:00-13:00 점심)',
    13, 2, 'ON_GOING', '# 전라북도 군산 무화과 농사 체험', '35.972321', '126.861756', 4.39, 1),
    ('전라북도 한우 농장 경영', '전라북도 전주시', '전라북도 전주시 덕진구 덕진로 789', 250, 5, '메인 이미지 주소',
    '디테일 이미지 주소', '2023-06-05', '2023-10-31', '2023-11-05', '2024-03-15', '주3일', '10:00-17:00 (12:00-13:00 점심)',
    14, 3, 'ON_GOING', '# 전라북도 전주 한우 농사 경영', '35.834199', '127.126586', 4.5, 1),
    ('평창 스키장 스키강사', '강원도 평창군', '강원도 평창군 대관령면 대관령로 200', 300, 5, '메인 이미지 주소',
    '디테일 이미지 주소', '2023-11-01', '2023-12-15', '2023-12-20', '2024-02-28', '주3일', '10:00-16:00 (12:00-13:00 점심)',
    5, 2, 'ON_GOING', '# 평창 스키강사 경험자 환영', '37.673983', '128.694239', 4.26, 2),
    ('강원도 산청 농장 체험', '강원도 삼척시', '강원도 삼척시 근덕면 근덕길 123', 220, 6, '메인 이미지 주소',
     '디테일 이미지 주소', '2023-04-25', '2023-10-31', '2023-11-05', '2024-03-01', '주5일', '10:00-17:00 (12:00-13:00 점심)',
     10, 2, 'ON_GOING', '# 강원도 삼척 농사 체험', '37.269663', '129.075686', 4.44, 2),
    ('강원도 감자 농장 농작업', '강원도 홍천군', '강원도 홍천군 홍천읍 강변로 123', 200, 6, '메인 이미지 주소',
     '디테일 이미지 주소', '2023-09-15', '2023-10-31', '2023-06-05', '2023-10-31', '주4일', '9:00-17:00 (12:00-13:00 점심)',
     6, 2, 'ON_GOING', '# 강원도 홍천 감자 농사 체험', '37.694827', '127.887503', 4.46, 2),
    ('제주도 오름 등반 가이드', '제주도 서귀포시', '제주특별자치도 서귀포시 성산읍 일출로 123', 350, 4, '메인 이미지 주소',
     '디테일 이미지 주소', '2023-08-10', '2023-10-15', '2023-08-20', '2023-11-30', '주2일', '8:00-16:00 (12:00-13:00 점심)',
     7, 1, 'ON_GOING', '# 제주도 오름 등반 가이드 서비스', '33.459776', '126.941073', 4.87, 3),
    ('제주도 해녀체험', '제주도 제주시', '제주특별자치도 제주시 구좌읍 해녀로 456', 250, 5, '메인 이미지 주소',
       '디테일 이미지 주소', '2023-06-10', '2023-10-31', '2023-11-05', '2024-03-15', '주4일', '8:30-16:30 (12:00-13:00 점심)',
       12, 4, 'ON_GOING', '# 제주도 해녀체험', '33.530366', '126.857760', 4.54, 3),
    ('전남 해양 어항 경영', '전라남도 여수시', '전라남도 여수시 여문로 567', 250, 5, '메인 이미지 주소',
     '디테일 이미지 주소', '2023-06-15', '2023-10-31', '2023-11-05', '2024-03-31', '주4일', '9:30-16:30 (12:00-13:00 점심)',
     9, 1, 'ON_GOING', '# 전라남도 여수 해양 어항 관리', '34.759880', '127.650681', 4.62, 4),
    ('경기도 토마토 농장 체험', '경기도 양주시', '경기도 양주시 백석읍 농업로 789', 180, 6, '메인 이미지 주소',
     '디테일 이미지 주소', '2023-03-20', '2023-08-31', '2023-09-05', '2023-12-15', '주3일', '10:00-16:00 (12:00-13:00 점심)',
     8, 2, 'COMPLETED', '# 경기도 양주 토마토 농사 체험', '37.785241', '126.752217', 4.34, 5);

-- For Farming Holiday ID 1 ('임실치즈마을 치즈공업')
INSERT INTO house(name, location, image_path, rent, rent_months, rent_start_date, rent_end_date, house_type, area,
                  capacity, room_facilities, out_facilities, address, lat, lon, recruit_status, rate, farming_holiday_id)
VALUES
    ('임실치즈마을 치즈공업 하우스 1', '전라북도 임실군', '이미지 경로 1', 15, 3, '2023-08-20', '2024-01-20', '전원주택', 50,
     4, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '전라북도 임실군 임실읍 치즈마을 1길 4 임실치즈마을', '38', '127', 'ON_GOING', 4.5, 1),
    ('임실치즈마을 치즈공업 하우스 2', '전라북도 임실군', '이미지 경로 2', 20, 4, '2023-08-20', '2024-01-20', '전원주택', 60,
     5, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '전라북도 임실군 임실읍 치즈마을 1길 4 임실치즈마을', '38', '127', 'ON_GOING', 4.7, 1),
    ('무화과 농장 체험 하우스 1', '전라북도 군산시', '이미지 경로 3', 10, 2, '2023-04-20', '2023-10-31', '전원주택', 40,
    2, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '전라북도 군산시 대야면 무화과로 456', '35.972321', '126.861756', 'ON_GOING', 4.2, 2),
    ('무화과 농장 체험 하우스 2', '전라북도 군산시', '이미지 경로 4', 15, 3, '2023-04-20', '2023-10-31', '전원주택', 50,
    3, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '전라북도 군산시 대야면 무화과로 456', '35.972321', '126.861756', 'ON_GOING', 4.4, 2),
    ('한우 농장 민박 1', '전라북도 전주시', '이미지 경로 5', 25, 5, '2023-06-05', '2023-10-31', '전원주택', 80,
    4, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '전라북도 전주시 덕진구 덕진로 789', '35', '127', 'ON_GOING', 4.6, 3),
    ('한우 농장 민박 2', '전라북도 전주시', '이미지 경로 6', 30, 6, '2023-06-05', '2023-10-31', '전원주택', 100,
    5, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '전라북도 전주시 덕진구 덕진로 789', '35', '127', 'ON_GOING', 4.8, 3),
    ('평창 스키장 스키강사 하우스 1', '강원도 평창군', '이미지 경로 7', 20, 4, '2023-11-01', '2023-12-15', '콘도', 70,
   4, '인터넷,에어컨,TV', '주차장, 스키장, 레스토랑', '강원도 평창군 대관령면 대관령로 200', '37', '128', 'ON_GOING', 4.4, 4),
  ('평창 스키장 스키강사 하우스 2', '강원도 평창군', '이미지 경로 8', 25, 5, '2023-11-01', '2023-12-15', '콘도', 80,
   5, '인터넷,에어컨,TV', '주차장, 스키장, 레스토랑', '강원도 평창군 대관령면 대관령로 200', '37', '128', 'ON_GOING', 4.6, 4),
    ('강원도 산청 농장 체험 하우스 1', '강원도 삼척시', '이미지 경로 9', 15, 3, '2023-04-25', '2023-10-31', '전원주택', 60,
    4, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '강원도 삼척시 근덕면 근덕길 123', '37', '129', 'ON_GOING', 4.2, 5),
    ('강원도 산청 농장 체험 하우스 2', '강원도 삼척시', '이미지 경로 10', 20, 4, '2023-04-25', '2023-10-31', '전원주택', 70,
    5, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '강원도 삼척시 근덕면 근덕길 123', '37', '129', 'ON_GOING', 4.5, 5),
    ('강원도 감자 농장 농작업 하우스 1', '강원도 홍천군', '이미지 경로 11', 12, 3, '2023-09-15', '2023-10-31', '전원주택', 40,
     3, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '강원도 홍천군 홍천읍 강변로 123', '38', '127', 'ON_GOING', 4.3, 6),
    ('강원도 감자 농장 농작업 하우스 2', '강원도 홍천군', '이미지 경로 12', 14, 4, '2023-09-15', '2023-10-31', '전원주택', 50,
     4, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '강원도 홍천군 홍천읍 강변로 123', '38', '127', 'ON_GOING', 4.4, 6),
    ('제주도 오름 등반 가이드 하우스 1', '제주도 서귀포시', '이미지 경로 13', 18, 3, '2023-08-10', '2023-10-15', '콘도', 60,
    4, '인터넷,에어컨,TV', '주차장, 등반장, 레스토랑', '제주특별자치도 서귀포시 성산읍 일출로 123', '33', '127', 'ON_GOING', 4.6, 7),
    ('제주도 오름 등반 가이드 하우스 2', '제주도 서귀포시', '이미지 경로 14', 20, 4, '2023-08-10', '2023-10-15', '콘도', 70,
    5, '인터넷,에어컨,TV', '주차장, 등반장, 레스토랑', '제주특별자치도 서귀포시 성산읍 일출로 123', '33', '127', 'ON_GOING', 4.8, 7),
    ('제주도 해녀체험 하우스 1', '제주도 제주시', '이미지 경로 17', 20, 4, '2023-06-10', '2023-10-31', '전원주택', 60,
   4, '인터넷,에어컨,TV', '마당, 주차장, 해변 접근', '제주특별자치도 제주시 구좌읍 해녀로 456', '33', '126', 'ON_GOING', 4.6, 8),
     ('제주도 해녀체험 하우스 2', '제주도 제주시', '이미지 경로 18', 18, 3, '2023-06-10', '2023-10-31', '전원주택', 70,
   5, '인터넷,에어컨,TV', '마당, 주차장, 해변 접근', '제주특별자치도 제주시 구좌읍 해녀로 456', '33', '126', 'ON_GOING', 4.4, 8),
    ('전남 해양 어항 경영 하우스 1', '전라남도 여수시', '이미지 경로 19', 16, 3, '2023-06-15', '2023-10-31', '전원주택', 50,
   4, '인터넷,에어컨,TV', '마당, 주차장, 어항 접근', '전라남도 여수시 여문로 567', '34', '127', 'ON_GOING', 4.5, 9),
    ('전남 해양 어항 경영 하우스 2', '전라남도 여수시', '이미지 경로 20', 18, 4, '2023-06-15', '2023-10-31', '전원주택', 60,
   5, '인터넷,에어컨,TV', '마당, 주차장, 어항 접근', '전라남도 여수시 여문로 567', '34', '127', 'ON_GOING', 4.7, 9),
    ('경기도 토마토 농장 체험 하우스 1', '경기도 양주시', '이미지 경로 15', 14, 2, '2023-03-20', '2023-08-31', '전원주택', 45,
    3, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 풀장', '경기도 양주시 백석읍 농업로 789', '37', '127', 'COMPLETED', 4.2, 10),
    ('경기도 토마토 농장 체험 하우스 2', '경기도 양주시', '이미지 경로 16', 16, 3, '2023-03-20', '2023-08-31', '전원주택', 55,
    4, '인터넷,에어컨,TV', '마당, 주차장, 바베큐, 파라솔', '경기도 양주시 백석읍 농업로 789', '37', '127', 'COMPLETED', 4.4, 10);

-- Inserting data into the 'farming_holiday_guest' table
INSERT INTO farming_holiday_guest_house(farming_holiday_id, guest_id, house_id, approval_status)
VALUES (1, 1, 1,'ACCEPTED'), -- 임실치즈마을 치즈공업, 손영희, 임실치즈마을 치즈공업 하우스 1
       (2, 1, 3, 'REFUSED'), -- 무화과 농장 체험, 손영희, 무화과 농장 체험 하우스 1
       (3, 1, 6, 'WAITING'), -- 전라북도 한우 농장 경영, 손영희, 한우 농장 민박 2
       (10, 1, 19, 'WAITING'),
       (4, 2, 8, 'ACCEPTED'),
       (5, 2, 10, 'REFUSED'),
       (6, 2, 12,'WAITING'),
       (7, 3, 13, 'ACCEPTED'),
       (8, 3, 15,'REFUSED'),
       (9, 3, 18,'WAITING');
