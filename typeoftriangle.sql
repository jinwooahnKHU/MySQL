-- hackerrank
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

select (
    case when A = B and B = C and A = C then 'Equilateral'
        when (A > B and A > C and B + C <= A) or 
            (B > C AND B > A AND A + C <= B) OR
            (C > A AND C > B AND A + B <= C) THEN 'Not A Triangle'
        WHEN A != B AND A != C AND B != C THEN 'Scalene'
        ELSE 'Isosceles' END
)
FROM TRIANGLES

