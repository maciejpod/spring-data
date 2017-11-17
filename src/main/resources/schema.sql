CREATE TABLE t_user (
  id BIGINT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  login_name VARCHAR NOT NULL,
  password VARCHAR NOT NULL
);

CREATE TABLE t_item (
  id BIGINT AUTO_INCREMENT NOT NULL,
  name VARCHAR NOT NULL,
  price DECIMAL(20,2) NOT NULL,
  weight DECIMAL NOT NULL,
  category_id BIGINT NOT NULL
);

CREATE TABLE t_order (
  id BIGINT AUTO_INCREMENT NOT NULL,
  user_id BIGINT NOT NULL,
  order_date DATE NOT NULL,
  send_date DATE,
  payment_completed BOOLEAN NOT NULL,
  order_status BIGINT NOT NULL DEFAULT 0
);

CREATE TABLE t_order_items (
  order_id BIGINT NOT NULL,
  item_id BIGINT NOT NULL,
  quantity BIGINT NOT NULL
);

CREATE TABLE t_category (
  id BIGINT AUTO_INCREMENT NOT NULL,
  category_name VARCHAR NOT NULL
);


ALTER TABLE t_user ADD CONSTRAINT pk_t_user PRIMARY KEY (id);
ALTER TABLE t_order ADD CONSTRAINT pk_t_order PRIMARY KEY (id);
ALTER TABLE t_order_items ADD CONSTRAINT fk_t_item FOREIGN KEY (item_id) REFERENCES t_item(id);
ALTER TABLE t_order_items ADD CONSTRAINT fk_t_order FOREIGN KEY (order_id) REFERENCES t_order(id);
ALTER TABLE t_item ADD CONSTRAINT pk_t_item PRIMARY KEY (id);
ALTER TABLE t_item ADD CONSTRAINT fk_t_category FOREIGN KEY (category_id) REFERENCES t_category(id);
ALTER TABLE t_category ADD CONSTRAINT pk_t_category PRIMARY KEY (id);