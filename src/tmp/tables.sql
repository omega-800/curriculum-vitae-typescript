
DROP TABLE IF EXISTS contactPoint;
DROP TABLE IF EXISTS career;
DROP TABLE IF EXISTS applicationSubCategory;
DROP TABLE IF EXISTS applicationCategory;
DROP TABLE IF EXISTS application;
DROP TABLE IF EXISTS project_projectCategory;
DROP TABLE IF EXISTS project_skill;
DROP TABLE IF EXISTS project_author;
DROP TABLE IF EXISTS skillCategory;
DROP TABLE IF EXISTS skill;
DROP TABLE IF EXISTS projectCategory;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS personCategory;
DROP TABLE IF EXISTS school_contactPoint;
DROP TABLE IF EXISTS school;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS workplace_contactPoint;
DROP TABLE IF EXISTS workplace;
DROP TABLE IF EXISTS country_language;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS language;

CREATE TABLE IF NOT EXISTS country (
    country_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    shortName STRING
);

CREATE TABLE IF NOT EXISTS language (
    language_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    alternateName STRING,
    url STRING ARRAY
);

CREATE TABLE IF NOT EXISTS country_language(
    country_language_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language_id UUID NOT NULL REFERENCES language(language_id),
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS contactPoint (
    contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    phone INT,
    email STRING
);

CREATE TABLE IF NOT EXISTS address (
    address_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    street STRING NOT NULL,
    city STRING NOT NULL,
    zip INT NOT NULL,
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS workplace (
    workplace_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    description STRING,
    name STRING,
    legalName STRING,
    url STRING,
    logo STRING,
    foundingDate DATE,
    address_id UUID NOT NULL REFERENCES address(address_id),
    founders STRING ARRAY NOT NULL 
);

CREATE TABLE IF NOT EXISTS workplace_contactPoint (
    workplace_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    workplace_id UUID NOT NULL REFERENCES workplace(workplace_id)
);

CREATE TABLE IF NOT EXISTS school (
    school_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    description STRING,
    name STRING,
    url STRING,
    logo STRING,
    image STRING,
    type STRING,
    address_id UUID NOT NULL REFERENCES address(address_id)
);

CREATE TABLE IF NOT EXISTS school_contactPoint (
    school_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    school_id UUID NOT NULL REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS career (
    career_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING,
    description STRING,
    yearfrom DATE NOT NULL,
    yearto DATE NOT NULL,
    document STRING,
    workplace_id UUID REFERENCES workplace(workplace_id),
    school_id UUID REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS personCategory (
    personCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING NOT NULL
);

CREATE TABLE IF NOT EXISTS person (
    person_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    firstName STRING NOT NULL,
    lastName STRING NOT NULL,
    birthDate DATE NOT NULL,
    email STRING,
    phone STRING,
    birthPlace STRING,
    jobTitle STRING,
    nationality STRING ARRAY,
    gender CHARACTER NOT NULL,
    image STRING,
    thumbnail STRING,
    relation STRING,
    description STRING,
    address_id UUID NOT NULL REFERENCES address(address_id),
    workplace_id UUID NOT NULL REFERENCES workplace(workplace_id),
    school_id UUID NOT NULL REFERENCES school(school_id),
    personCategory_id UUID NOT NULL REFERENCES personCategory(personCategory_id)
);

CREATE TABLE IF NOT EXISTS applicationCategory (
    applicationCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING NOT NULL
);

CREATE TABLE IF NOT EXISTS applicationSubCategory (
    applicationSubCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING NOT NULL,
    applicationCategory_id UUID NOT NULL REFERENCES applicationCategory(applicationCategory_id)
);

CREATE TABLE IF NOT EXISTS application (
    application_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING NOT NULL,
    alternateName STRING,
    operatingSystem STRING,
    keywords STRING,
    url STRING,
    version STRING
);

CREATE TABLE IF NOT EXISTS skillCategory (
    skillCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING
);

CREATE TABLE IF NOT EXISTS skill (
    skill_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    knowledgePercent INT NOT NULL,
    proficiencyLevel STRING,
    yearsOfExperience INT,
    name STRING,
    description STRING,
    skillCategory_id UUID NOT NULL REFERENCES skillCategory(skillCategory_id),
    application_id UUID REFERENCES application(application_id),
    language_id UUID REFERENCES language(language_id)
);

CREATE TABLE IF NOT EXISTS projectCategory (
    projectCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING
);

CREATE TABLE IF NOT EXISTS project (
    project_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name STRING NOT NULL,
    description STRING NOT NULL,
    url STRING,
    thumbnail STRING,
    image STRING,
    github STRING,
    date DATE,
    client_id UUID REFERENCES person(person_id)
);

CREATE TABLE IF NOT EXISTS project_projectCategory (
    project_projectCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    projectCategory_id UUID NOT NULL REFERENCES projectCategory(projectCategory_id)
);

CREATE TABLE IF NOT EXISTS project_skill (
    project_skill_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    skill_id UUID NOT NULL REFERENCES skill(skill_id)
);

CREATE TABLE IF NOT EXISTS project_author (
    project_author_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    author_id UUID NOT NULL REFERENCES person(person_id)
);