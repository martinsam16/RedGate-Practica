CREATE TABLE martin.offerings (
  begindate DATE NOT NULL,
  "LOCATION" VARCHAR2(8 BYTE) NOT NULL,
  course VARCHAR2(6 BYTE) NOT NULL,
  trainer NUMBER(4) NOT NULL,
  CONSTRAINT offerings_pk PRIMARY KEY (begindate,course),
  CONSTRAINT offerings_courses FOREIGN KEY (course) REFERENCES martin.courses (code),
  CONSTRAINT offerings_employes FOREIGN KEY (trainer) REFERENCES martin.employees (empno)
);