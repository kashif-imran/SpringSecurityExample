

CREATE TABLE users (
  USER_ID bigserial NOT NULL,
  USERNAME character varying(40) NOT NULL,
  PASSWORD character varying(40) NOT NULL,
  ACTIVE SMALLINT NOT NULL,
  constraint pk_users primary key (USER_ID)
)

CREATE TABLE user_roles (
  USER_ROLE_ID bigserial NOT NULL,
  USER_ID integer NOT NULL,
  AUTHORITY character varying(45) NOT NULL,
 constraint pk_user_roles primary key (USER_ROLE_ID),
  CONSTRAINT FK_user_roles FOREIGN KEY (USER_ID) REFERENCES users (USER_ID)
)

INSERT INTO users  VALUES ('1', 'kashif',  'kashif',  '1' );
INSERT INTO users  VALUES ('2', 'mehaboob',  'mehaboob',  '1' );

INSERT INTO user_roles VALUES ('1',  '1',  'ROLE_ADMIN' );
INSERT INTO user_roles VALUES ('2',  '2',  'ROLE_USER' );