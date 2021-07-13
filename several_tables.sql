# item : 의류 상품정보
# item_new : 
# review : 별점과 댓글 저장
# memeber : 회원정보
# stock : 각 상품별 재고 수량 정보
#stock의 item_id column에는 상품 고유 식별할수있는 item table의 id column이 들어가야 함
#이것처럼, 다른 테이블의 특정 row를 식별할 수 있게 해주는 column을 foreign key 라고 함(외래키)
SELECT * FROM copang_main.stock;
