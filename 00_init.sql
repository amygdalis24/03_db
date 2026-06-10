create user skn_ai@'%' identified by '1234';   # 계정 생성

# MySQL에서는 database와 schema로 같은 의미로 사용
# - database(데이터 창고) == schema(창고 설계도, 명세서)
# - schema(창고 설계도,  명세서)
create database menudb;   # 데이터베이스(데이터 저장 공간(파일) 생성)
create schema employeedb;   # 스키마 생성

show databases; # 데이터베이스 목록 조회

grant all privileges on menudb.* to skn_ai@'%';   # 권한 부여
grant all privileges on employeedb.* to skn_ai@'%';   # 권한 부여

