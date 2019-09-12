CREATE TABLE martin.history (
  beginyear NUMBER(4),
  begindate DATE NOT NULL,
  enddate DATE NOT NULL,
  msal NUMBER(6,2),
  comments VARCHAR2(60 BYTE) NOT NULL,
  deptno NUMBER(2) NOT NULL,
  empno NUMBER(4) NOT NULL,
  CONSTRAINT history_pk PRIMARY KEY (begindate,empno),
  CONSTRAINT history_departments FOREIGN KEY (deptno) REFERENCES martin.departments (deptno),
  CONSTRAINT history_employes FOREIGN KEY (empno) REFERENCES martin.employees (empno)
);