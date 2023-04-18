DROP TABLE IF EXISTS career CASCADE;
DROP TABLE IF EXISTS project_skill CASCADE;
DROP TABLE IF EXISTS project_author CASCADE;
DROP TABLE IF EXISTS skill CASCADE;
DROP TABLE IF EXISTS skillCategory CASCADE;
DROP TABLE IF EXISTS skillSubCategory CASCADE;
DROP TABLE IF EXISTS knowledge CASCADE;
DROP TABLE IF EXISTS activity CASCADE;
DROP TABLE IF EXISTS operatingSystem CASCADE;
DROP TABLE IF EXISTS applicationType CASCADE;
DROP TABLE IF EXISTS applicationCategory CASCADE;
DROP TABLE IF EXISTS application CASCADE;
DROP TABLE IF EXISTS project CASCADE;
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
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS skill_skillSubCategory CASCADE;
DROP TABLE IF EXISTS applicationSubCategory CASCADE;
DROP TABLE IF EXISTS projectCategory CASCADE;
DROP TABLE IF EXISTS project_projectCategory CASCADE;

CREATE TABLE IF NOT EXISTS country (
    country_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    shortName VARCHAR
);

CREATE TABLE IF NOT EXISTS skillCategory (
    skillCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    percent SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS skillSubCategory (
    skillSubCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    skillCategory_id UUID NOT NULL REFERENCES skillCategory(skillCategory_id),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR
);

CREATE TABLE IF NOT EXISTS applicationType(
    applicationType_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR
);

CREATE TABLE IF NOT EXISTS skill (
    skill_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    hobby BOOLEAN NOT NULL,
    knowledgePercent SMALLINT NOT NULL,
    proficiencyLevel VARCHAR,
    proficiencyLevel_e VARCHAR,
    proficiencyLevel_r VARCHAR,
    yearsOfExperience SMALLINT,
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    thumbnail VARCHAR,
    image VARCHAR,
    url VARCHAR,
    type VARCHAR NOT NULL,
    alternateName VARCHAR,
    alternateName_e VARCHAR,
    alternateName_r VARCHAR,
    keywords VARCHAR,
    keywords_e VARCHAR,
    keywords_r VARCHAR,
    version VARCHAR,
    shortName VARCHAR,
    applicationType_id UUID REFERENCES applicationType(applicationType_id)
);

CREATE TABLE IF NOT EXISTS skill_skillSubCategory (
    skill_skillSubCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    skillSubCategory_id UUID NOT NULL REFERENCES skillSubCategory(skillSubCategory_id),
    skill_id UUID NOT NULL REFERENCES skill(skill_id)
);

CREATE TABLE IF NOT EXISTS operatingSystem(
    operatingSystem_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    url VARCHAR,
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR
);

CREATE TABLE IF NOT EXISTS application_operatingSystem (
    application_operatingSystem_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    operatingSystem_id UUID NOT NULL REFERENCES operatingSystem(operatingSystem_id),
    application_id UUID NOT NULL REFERENCES skill(skill_id)
);

CREATE TABLE IF NOT EXISTS country_language(
    country_language_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language_id UUID NOT NULL REFERENCES skill(skill_id),
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS contactPoint (
    contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    phone INT,
    email VARCHAR
);

CREATE TABLE IF NOT EXISTS address (
    address_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    street VARCHAR NOT NULL,
    city VARCHAR NOT NULL,
    zip SMALLINT NOT NULL,
    country_id UUID NOT NULL REFERENCES country(country_id)
);

CREATE TABLE IF NOT EXISTS workplace (
    workplace_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    legalName VARCHAR,
    foundingDate DATE,
    founder VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    name VARCHAR,
    name_e VARCHAR,
    name_r VARCHAR,
    url VARCHAR,
    logo VARCHAR,
    image VARCHAR,
    address_id UUID NOT NULL REFERENCES address(address_id)
);

CREATE TABLE IF NOT EXISTS workplace_contactPoint (
    workplace_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    workplace_id UUID NOT NULL REFERENCES workplace(workplace_id)
);

CREATE TABLE IF NOT EXISTS school (
    school_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    type VARCHAR,
    type_e VARCHAR,
    type_d VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    name VARCHAR,
    name_e VARCHAR,
    name_r VARCHAR,
    url VARCHAR,
    logo VARCHAR,
    image VARCHAR,
    address_id UUID NOT NULL REFERENCES address(address_id)
);

CREATE TABLE IF NOT EXISTS school_contactPoint (
    school_contactPoint_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    contactPoint_id UUID NOT NULL REFERENCES contactPoint(contactPoint_id),
    school_id UUID NOT NULL REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS career (
    career_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    yearfrom SMALLINT NOT NULL,
    yearto SMALLINT NOT NULL,
    document VARCHAR,
    workplace_id UUID REFERENCES workplace(workplace_id),
    school_id UUID REFERENCES school(school_id)
);

CREATE TABLE IF NOT EXISTS personCategory (
    personCategory_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR
);

CREATE TABLE IF NOT EXISTS person (
    person_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    firstName VARCHAR NOT NULL,
    lastName VARCHAR NOT NULL,
    birthDate DATE,
    birthPlace VARCHAR,
    jobTitle VARCHAR,
    jobTitle_e VARCHAR,
    jobTitle_r VARCHAR,
    gender CHARACTER,
    image VARCHAR,
    thumbnail VARCHAR,
    relation VARCHAR,
    relation_e VARCHAR,
    relation_r VARCHAR,
    description VARCHAR,
    description_e VARCHAR,
    description_r VARCHAR,
    github VARCHAR,
    url VARCHAR,
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

CREATE TABLE IF NOT EXISTS project (
    project_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR NOT NULL,
    name_e VARCHAR,
    name_r VARCHAR,
    description VARCHAR NOT NULL,
    description_e VARCHAR,
    description_r VARCHAR,
    url VARCHAR,
    thumbnail VARCHAR,
    image VARCHAR,
    github VARCHAR,
    date DATE,
    client_id UUID REFERENCES person(person_id),
    workplace_id UUID REFERENCES workplace(workplace_id)
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

