-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Crowdfunding_db_schema

CREATE TABLE "campaign" (
    "cf_id" int,
    "contact_id" int,
    "company_name" VARCHAR,
    "Description" VARCHAR,
    "goal" float,
    "pledged" float,
    "outcome" varchar,
    "backers_count" int,
    "country" archer,
    "currency" varchar,
    "launched_date" date,
    "end_date" date,
    "category_id" varchar,
    "subcategory_id" varchar,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar,
    "category" varchar,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar,
    "subcategory" varchar,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int,
    "first_name" varchar,
    "last_name" varchar,
    "email" varchar,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

