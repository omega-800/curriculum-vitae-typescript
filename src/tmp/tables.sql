DROP TABLE IF EXISTS career CASCADE;
DROP TABLE IF EXISTS project_projectCategory CASCADE;
DROP TABLE IF EXISTS project_skill CASCADE;
DROP TABLE IF EXISTS project_author CASCADE;
DROP TABLE IF EXISTS skill CASCADE;
DROP TABLE IF EXISTS skillCategory CASCADE;
DROP TABLE IF EXISTS applicationSubCategory CASCADE;
DROP TABLE IF EXISTS applicationCategory CASCADE;
DROP TABLE IF EXISTS application CASCADE;
DROP TABLE IF EXISTS projectCategory CASCADE;
DROP TABLE IF EXISTS project CASCADE;
DROP TABLE IF EXISTS project_hobby CASCADE;
DROP TABLE IF EXISTS project_application CASCADE;
DROP TABLE IF EXISTS hobby_hobbyCategory CASCADE;
DROP TABLE IF EXISTS hobby CASCADE;
DROP TABLE IF EXISTS hobbyCategory CASCADE;
DROP TABLE IF EXISTS person_country CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS personCategory CASCADE;
DROP TABLE IF EXISTS organization CASCADE;
DROP TABLE IF EXISTS school_contactPoint CASCADE;
DROP TABLE IF EXISTS school CASCADE;
DROP TABLE IF EXISTS workplace_contactPoint CASCADE;
DROP TABLE IF EXISTS workplace CASCADE;
DROP TABLE IF EXISTS contactPoint CASCADE;
DROP TABLE IF EXISTS address CASCADE;
DROP TABLE IF EXISTS country_language CASCADE;
DROP TABLE IF EXISTS country CASCADE;
DROP TABLE IF EXISTS language CASCADE;

CREATE TABLE IF NOT EXISTS country (
    country_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    shortName VARCHAR
);

CREATE TABLE IF NOT EXISTS language (
    language_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    shortName VARCHAR,
    url VARCHAR ARRAY
);

CREATE TABLE IF NOT EXISTS country_language(
    country_language_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language_id UUID NOT NULL REFERENCES language(language_id),
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS contactPoint (
    contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    phone INT,
    email VARCHAR
);

CREATE TABLE IF NOT EXISTS address (
    address_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    street VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    zip INT NOT NULL,
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS organization(
    description VARCHAR,
    name VARCHAR,
    url VARCHAR,
    logo VARCHAR,
    address_id UUID NOT NULL REFERENCES address(address_id)
);

CREATE TABLE IF NOT EXISTS workplace (
    workplace_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    legalName VARCHAR,
    foundingDate DATE,
    founder VARCHAR
) INHERITS (organization);

CREATE TABLE IF NOT EXISTS workplace_contactPoint (
    workplace_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    workplace_id UUID NOT NULL REFERENCES workplace(workplace_id)
);

CREATE TABLE IF NOT EXISTS school (
    school_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    image VARCHAR,
    type VARCHAR
) INHERITS (organization);

CREATE TABLE IF NOT EXISTS school_contactPoint (
    school_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    school_id UUID NOT NULL REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS career (
    career_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR,
    description VARCHAR,
    yearfrom INT NOT NULL,
    yearto INT NOT NULL,
    document VARCHAR,
    workplace_id UUID REFERENCES workplace(workplace_id),
    school_id UUID REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS personCategory (
    personCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS person (
    person_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    firstName VARCHAR NOT NULL,
    lastName VARCHAR NOT NULL,
    birthDate DATE,
    birthPlace VARCHAR,
    jobTitle VARCHAR,
    gender CHARACTER,
    image VARCHAR,
    thumbnail VARCHAR,
    relation VARCHAR,
    description VARCHAR,
    address_id UUID REFERENCES address(address_id),
    workplace_id UUID REFERENCES workplace(workplace_id),
    school_id UUID REFERENCES school(school_id),
    personCategory_id UUID REFERENCES personCategory(personCategory_id),
    contactPoint_id UUID REFERENCES contactPoint(contactPoint_id)
);

CREATE TABLE IF NOT EXISTS person_country (
    person_country UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    person_id UUID REFERENCES person(person_id),
    country_id UUID REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS applicationCategory (
    applicationCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS applicationType(
    applicationType_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS application (
    application_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    alternateName VARCHAR,
    operatingSystem VARCHAR,
    keywords VARCHAR,
    url VARCHAR,
    version VARCHAR,
    applicationCategory_id UUID REFERENCES applicationCategory(applicationCategory_id),
    applicationType_id UUID REFERENCES applicationType(applicationType_id)
);

CREATE TABLE IF NOT EXISTS hobbyCategory (
    hobbyCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR
);

CREATE TABLE IF NOT EXISTS hobby (
    hobby_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    url VARCHAR,
    thumbnail VARCHAR,
    image VARCHAR
);

CREATE TABLE IF NOT EXISTS hobby_hobbyCategory (
    hobby_hobbyCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    hobby_id UUID NOT NULL REFERENCES hobby(hobby_id),
    hobbyCategory_id UUID NOT NULL REFERENCES hobbyCategory(hobbyCategory_id)
);

CREATE TABLE IF NOT EXISTS skillCategory (
    skillCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR
);

CREATE TABLE IF NOT EXISTS skill (
    skill_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    knowledgePercent INT NOT NULL,
    proficiencyLevel VARCHAR,
    yearsOfExperience INT,
    name VARCHAR,
    description VARCHAR,
    skillCategory_id UUID NOT NULL REFERENCES skillCategory(skillCategory_id),
    application_id UUID REFERENCES application(application_id),
    hobby_id UUID REFERENCES hobby(hobby_id),
    language_id UUID REFERENCES language(language_id)
);

CREATE TABLE IF NOT EXISTS project (
    project_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    url VARCHAR,
    thumbnail VARCHAR,
    image VARCHAR,
    github VARCHAR,
    date DATE,
    client_id UUID REFERENCES person(person_id)
);

CREATE TABLE IF NOT EXISTS project_skill (
    project_skill_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    skill_id UUID NOT NULL REFERENCES skill(skill_id)
);

CREATE TABLE IF NOT EXISTS project_application (
    project_application_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    application_id UUID NOT NULL REFERENCES application(application_id)
);

CREATE TABLE IF NOT EXISTS project_author (
    project_author_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    author_id UUID NOT NULL REFERENCES person(person_id)
);

CREATE TABLE IF NOT EXISTS project_hobby (
    project_hobby_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES project(project_id),
    hobby_id UUID NOT NULL REFERENCES hobby(hobby_id)
);

