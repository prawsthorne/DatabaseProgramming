-- Table: Homework.Homework

-- DROP TABLE "Homework"."Homework";

CREATE TABLE "Homework"."Homework"
(
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    week integer NOT NULL,
    hours integer NOT NULL,
    CONSTRAINT "Homework_pkey" PRIMARY KEY (student_id, course_id, week),
    CONSTRAINT classes_fkey FOREIGN KEY (student_id)
        REFERENCES "Homework"."Students" (student_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT students_fkey FOREIGN KEY (course_id)
        REFERENCES "Homework"."Classes" (course_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE "Homework"."Homework"
    OWNER to postgres;