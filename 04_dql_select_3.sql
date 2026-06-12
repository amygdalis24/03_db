# 그룹 함수
# - 그룹의 통계를 반환하는 함수
# - sum(), avg(), count(), max(), min(), count()

# sum(컬럼)
# - null(빈 칸 상태)이 아닌 컬럼의 합
select
    sum(menu_price)
from
    tbl_menu

# avg(컬럼)
# - null(빈 칸 상태)이 아닌 컬럼의 합
select
    avg(menu_price)
from
    tbl_menu;

# 카테고리 코드가 10인 메뉴의 평균 가격
select
    avg(menu_price)
from
    tbl_menu
where
    category_code = 10;


# =====================================
# having 절
# - group by 를 통해 만들어진 그룹에 대한 조건을 작성하는 구문
# - having 절 작성 시 항상 그룹함수가 포함된다

# 메뉴 테이블에서
# 카테고리 별 메뉴 개수가 2개 이상인 카테고리의
# 카테고리 번호, 개수 출력

select
    category_code,
    count(*)
from
    tbl_menu
group by
    category_code
having
    count(*) >= 2;


# 카테고리 테이블에서
# 부모 카테고리(ref_category_code) 별로 개수 3개 이상인
# 부모 카테고리 번호, 개수 조회
# 부모 카테고리 오름 차순으로 조회

select
    ref_category_code, count(*)
from
    tbl_category
where
    ref_category_code is not null
group by
    ref_category_code
having
#   ref_category_code is not null  # where절
#   and
    count(*) >= 3
order by
    count(*) asc
limit 1;


# 위 쿼리 결과에서 null 제외
