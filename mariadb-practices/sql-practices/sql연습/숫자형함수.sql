# 함수 : 수학

#abs 절댓값 출력
select abs(-1), abs(1);

#mod
select mod(10, 3);

#floor 실수
select(3.14);

#ceil 반올림?
select ceil(3.14);

#round(x) : x에 가장 근접한 정수
#round(x, d) : x값 중에 소수점 d자리에 가장 근접한 실수.
select round(1.298), round(1.4876, 1), round(1.4876, 0);

# pow(x, y), power(x, y) x의 y승
select pow(2, 10), power(10, 2);

#sign(x)
select sign(20), sign(-100), sign(0);
#greatest(x, y, ....), least(x, y, .....)
select greatest(10, 40, 20  , 30), least(10, 20 , 40, 30);
select greatest('b', 'a', 'C'), greatest('hello', 'hellp', 'hellq');

