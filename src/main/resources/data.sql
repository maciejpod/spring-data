--INSERT INTO t_category(category_name) VALUES('Sport');

INSERT INTO t_user VALUES (1, 'Imie1', 'Nazwisko1', 'login1', '123');
INSERT INTO t_user VALUES (2, 'Imie2', 'Nazwisko2', 'login2', '123');
INSERT INTO t_user VALUES (3, 'Imie3', 'Nazwisko3', 'login3', '123');
INSERT INTO t_user VALUES (4, 'Imie4', 'Nazwisko4', 'login4', '123');

INSERT INTO t_category VALUES(1, 'Sport');
INSERT INTO t_category VALUES(2, 'Akcesoria kuchenne');
INSERT INTO t_category VALUES(3, 'Ogrodnicze');
INSERT INTO t_category VALUES(4, 'Papiernicze');

INSERT INTO t_item VALUES(1, 'Narty', 699.99, 3.26, 1);
INSERT INTO t_item VALUES(2, 'Rower', 3000.00, 15, 1);
INSERT INTO t_item VALUES(3, 'Kask', 100.20, 0.2, 1);
INSERT INTO t_item VALUES(4, 'Patelnia', 79.90, 1.2, 2);
INSERT INTO t_item VALUES(5, 'Talerz', 10.90, 0.2, 2);
INSERT INTO t_item VALUES(6, 'Łopata', 70.90, 1.0, 3);
INSERT INTO t_item VALUES(7, 'Widły', 50.90, 1.2, 3);
INSERT INTO t_item VALUES(8, 'Kosiarka', 1500.00, 30.9, 3);
INSERT INTO t_item VALUES(9, 'Segregator', 15.00, 0.2, 4);
INSERT INTO t_item VALUES(10, 'Papier', 20.00, 5.0, 4);


INSERT INTO t_order VALUES(1, 1, CURRENT_DATE(), NULL, FALSE, 0);
INSERT INTO t_order VALUES(2, 2, CURRENT_DATE(), NULL, FALSE, 0);
INSERT INTO t_order VALUES(3, 3, CURRENT_DATE(), NULL, FALSE, 0);
INSERT INTO t_order VALUES(4, 4, CURRENT_DATE(), NULL, FALSE, 0);

INSERT INTO t_order_items VALUES(1, 2, 1);
INSERT INTO t_order_items VALUES(1, 3, 2);
INSERT INTO t_order_items VALUES(1, 6, 1);

INSERT INTO t_order_items VALUES(2, 6, 2);
INSERT INTO t_order_items VALUES(2, 7, 1);
INSERT INTO t_order_items VALUES(2, 8, 1);
INSERT INTO t_order_items VALUES(2, 4, 1);

INSERT INTO t_order_items VALUES(3, 10, 2);
INSERT INTO t_order_items VALUES(3, 9, 5);
INSERT INTO t_order_items VALUES(3, 2, 1);

INSERT INTO t_order_items VALUES(4, 1, 1);
INSERT INTO t_order_items VALUES(4, 7, 1);
INSERT INTO t_order_items VALUES(4, 5, 20);
