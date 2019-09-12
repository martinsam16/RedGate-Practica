CREATE TABLE martin.employees (
  ename VARCHAR2(8 BYTE) NOT NULL,
  init VARCHAR2(5 BYTE),
  "JOB" VARCHAR2(8 BYTE) NOT NULL,
  bdate DATE,
  msal NUMBER(6,2),
  comm NUMBER(6,2) NOT NULL,
  deptno NUMBER(2) NOT NULL,
  empno NUMBER(4) NOT NULL,
  mgr NUMBER(4),
  CONSTRAINT employees_pk PRIMARY KEY (empno),
  CONSTRAINT employes_departments FOREIGN KEY (deptno) REFERENCES martin.departments (deptno),
  CONSTRAINT employes_employes FOREIGN KEY (mgr) REFERENCES martin.employees (empno)
);