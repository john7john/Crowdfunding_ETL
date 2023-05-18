-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contact" (
    "contact_id" INT   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" varchar(2)   NOT NULL,
    "currency" varchar(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_ids" varchar   NOT NULL,
    "subcategory_ids" INT   NOT NULL
);

CREATE TABLE "Category" (
    "category_ids" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_ids"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_ids" INT   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_ids"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_ids" FOREIGN KEY("category_ids")
REFERENCES "Category" ("category_ids");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_ids" FOREIGN KEY("subcategory_ids")
REFERENCES "Subcategory" ("subcategory_ids");







SELECT * FROM public."Campaign"

SELECT * FROM public."Category"

SELECT * FROM public."Contact"

SELECT * FROM public."Subcategory"


