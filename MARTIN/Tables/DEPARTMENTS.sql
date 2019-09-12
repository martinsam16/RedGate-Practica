CREATE TABLE martin.departments (
  deptno NUMBER(2) NOT NULL,
  dname VARCHAR2(10 BYTE),
  "LOCATION" VARCHAR2(8 BYTE),
  mrg NUMBER(4) NOT NULL,
  employes_empno NUMBER(4) NOT NULL,
  CONSTRAINT departments_pk PRIMARY KEY (deptno),
  CONSTRAINT departments_employes FOREIGN KEY (employes_empno) REFERENCES martin.employees (empno)
);