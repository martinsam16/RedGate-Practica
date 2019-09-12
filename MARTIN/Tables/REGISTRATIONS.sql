CREATE TABLE martin.registrations (
  "EVALUATION" NUMBER(1) NOT NULL,
  attendee NUMBER(4) NOT NULL,
  begindate DATE NOT NULL,
  course VARCHAR2(6 BYTE) NOT NULL,
  CONSTRAINT registrations_pk PRIMARY KEY (attendee,begindate,course),
  CONSTRAINT registrations_employes FOREIGN KEY (attendee) REFERENCES martin.employees (empno),
  CONSTRAINT registrations_offerings FOREIGN KEY (begindate,course) REFERENCES martin.offerings (begindate,course)
);