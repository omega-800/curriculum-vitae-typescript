

CREATE TABLE ability
(
    ability_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    thumbnail character varying,
    image character varying,
    url character varying,
    CONSTRAINT ability_pkey PRIMARY KEY (ability_id)
);

CREATE TABLE activity
(
    activity_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    thumbnail character varying,
    image character varying,
    url character varying,
    CONSTRAINT activity_pkey PRIMARY KEY (activity_id)
);

CREATE TABLE address
(
    address_id uuid NOT NULL DEFAULT gen_random_uuid(),
    street character varying NOT NULL,
    city character varying NOT NULL,
    zip smallint NOT NULL,
    country_id uuid NOT NULL,
    CONSTRAINT address_pkey PRIMARY KEY (address_id)
);

CREATE TABLE application
(
    application_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    thumbnail character varying,
    image character varying,
    url character varying,
    alternatename character varying,
    alternatename_e character varying,
    alternatename_r character varying,
    keywords character varying,
    keywords_e character varying,
    keywords_r character varying,
    version character varying,
    applicationtype_id uuid,
    CONSTRAINT application_pkey PRIMARY KEY (application_id)
);

CREATE TABLE application_operatingsystem
(
    application_operatingsystem_id uuid NOT NULL DEFAULT gen_random_uuid(),
    operatingsystem_id uuid NOT NULL,
    application_id uuid NOT NULL,
    CONSTRAINT application_operatingsystem_pkey PRIMARY KEY (application_operatingsystem_id)
);

CREATE TABLE applicationtype
(
    applicationtype_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    CONSTRAINT applicationtype_pkey PRIMARY KEY (applicationtype_id)
);

CREATE TABLE career
(
    career_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    yearfrom smallint NOT NULL,
    yearto smallint NOT NULL,
    document character varying,
    workplace_id uuid,
    school_id uuid,
    CONSTRAINT career_pkey PRIMARY KEY (career_id)
);

CREATE TABLE contactpoint
(
    contactpoint_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    phone integer,
    email character varying,
    CONSTRAINT contactpoint_pkey PRIMARY KEY (contactpoint_id)
);

CREATE TABLE country
(
    country_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    shortname character varying,
    CONSTRAINT country_pkey PRIMARY KEY (country_id)
);

CREATE TABLE country_language
(
    country_language_id uuid NOT NULL DEFAULT gen_random_uuid(),
    language_id uuid NOT NULL,
    country_id uuid NOT NULL,
    CONSTRAINT country_language_pkey PRIMARY KEY (country_language_id)
);

CREATE TABLE knowledge
(
    knowledge_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    thumbnail character varying,
    image character varying,
    url character varying,
    CONSTRAINT knowledge_pkey PRIMARY KEY (knowledge_id)
);

CREATE TABLE language
(
    language_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    thumbnail character varying,
    image character varying,
    url character varying,
    shortname character varying,
    CONSTRAINT language_pkey PRIMARY KEY (language_id)
);

CREATE TABLE operatingsystem
(
    operatingsystem_id uuid NOT NULL DEFAULT gen_random_uuid(),
    url character varying,
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    CONSTRAINT operatingsystem_pkey PRIMARY KEY (operatingsystem_id)
);

CREATE TABLE person
(
    person_id uuid NOT NULL DEFAULT gen_random_uuid(),
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    birthdate date,
    birthplace character varying,
    jobtitle character varying,
    jobtitle_e character varying,
    jobtitle_r character varying,
    gender character(1),
    image character varying,
    thumbnail character varying,
    relation character varying,
    relation_e character varying,
    relation_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    github character varying,
    url character varying,
    address_id uuid,
    workplace_id uuid,
    school_id uuid,
    personcategory_id uuid,
    contactpoint_id uuid,
    CONSTRAINT person_pkey PRIMARY KEY (person_id)
);

CREATE TABLE person_country
(
    person_country uuid NOT NULL DEFAULT gen_random_uuid(),
    person_id uuid,
    country_id uuid,
    CONSTRAINT person_country_pkey PRIMARY KEY (person_country)
);

CREATE TABLE personcategory
(
    personcategory_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    CONSTRAINT personcategory_pkey PRIMARY KEY (personcategory_id)
);

CREATE TABLE project
(
    project_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying NOT NULL,
    description_e character varying,
    description_r character varying,
    url character varying,
    thumbnail character varying,
    image character varying,
    github character varying,
    date date,
    client_id uuid,
    workplace_id uuid,
    CONSTRAINT project_pkey PRIMARY KEY (project_id)
);

CREATE TABLE project_author
(
    project_author_id uuid NOT NULL DEFAULT gen_random_uuid(),
    project_id uuid NOT NULL,
    author_id uuid NOT NULL,
    CONSTRAINT project_author_pkey PRIMARY KEY (project_author_id)
);

CREATE TABLE project_skill
(
    project_skill_id uuid NOT NULL DEFAULT gen_random_uuid(),
    project_id uuid NOT NULL,
    skill_id uuid NOT NULL,
    CONSTRAINT project_skill_pkey PRIMARY KEY (project_skill_id)
);

CREATE TABLE school
(
    school_id uuid NOT NULL DEFAULT gen_random_uuid(),
    type character varying,
    type_e character varying,
    type_d character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    name character varying,
    name_e character varying,
    name_r character varying,
    url character varying,
    logo character varying,
    image character varying,
    address_id uuid NOT NULL,
    CONSTRAINT school_pkey PRIMARY KEY (school_id)
);

CREATE TABLE school_contactpoint
(
    school_contactpoint_id uuid NOT NULL DEFAULT gen_random_uuid(),
    contactpoint_id uuid NOT NULL,
    school_id uuid NOT NULL,
    CONSTRAINT school_contactpoint_pkey PRIMARY KEY (school_contactpoint_id)
);

CREATE TABLE skill
(
    skill_id uuid NOT NULL DEFAULT gen_random_uuid(),
    identifier character varying NOT NULL,
    hobby boolean NOT NULL,
    knowledgepercent smallint NOT NULL,
    proficiencylevel character varying,
    proficiencylevel_e character varying,
    proficiencylevel_r character varying,
    yearsofexperience smallint,
    application_id uuid,
    language_id uuid,
    knowledge_id uuid,
    activity_id uuid,
    ability_id uuid,
    CONSTRAINT skill_pkey PRIMARY KEY (skill_id)
);

CREATE TABLE skill_skillsubcategory
(
    skill_skillsubcategory_id uuid NOT NULL DEFAULT gen_random_uuid(),
    skillsubcategory_id uuid NOT NULL,
    skill_id uuid NOT NULL,
    CONSTRAINT skill_skillsubcategory_pkey PRIMARY KEY (skill_skillsubcategory_id)
);

CREATE TABLE skillcategory
(
    skillcategory_id uuid NOT NULL DEFAULT gen_random_uuid(),
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    percent smallint NOT NULL,
    CONSTRAINT skillcategory_pkey PRIMARY KEY (skillcategory_id)
);

CREATE TABLE skillsubcategory
(
    skillsubcategory_id uuid NOT NULL DEFAULT gen_random_uuid(),
    skillcategory_id uuid NOT NULL,
    name character varying NOT NULL,
    name_e character varying,
    name_r character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    CONSTRAINT skillsubcategory_pkey PRIMARY KEY (skillsubcategory_id)
);

CREATE TABLE workplace
(
    workplace_id uuid NOT NULL DEFAULT gen_random_uuid(),
    legalname character varying,
    foundingdate date,
    founder character varying,
    description character varying,
    description_e character varying,
    description_r character varying,
    name character varying,
    name_e character varying,
    name_r character varying,
    url character varying,
    logo character varying,
    image character varying,
    address_id uuid NOT NULL,
    CONSTRAINT workplace_pkey PRIMARY KEY (workplace_id)
);

CREATE TABLE workplace_contactpoint
(
    workplace_contactpoint_id uuid NOT NULL DEFAULT gen_random_uuid(),
    contactpoint_id uuid NOT NULL,
    workplace_id uuid NOT NULL,
    CONSTRAINT workplace_contactpoint_pkey PRIMARY KEY (workplace_contactpoint_id)
);

ALTER TABLE IF EXISTS address
    ADD CONSTRAINT address_country_id_fkey FOREIGN KEY (country_id)
    REFERENCES country (country_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS application
    ADD CONSTRAINT application_applicationtype_id_fkey FOREIGN KEY (applicationtype_id)
    REFERENCES applicationtype (applicationtype_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS career
    ADD CONSTRAINT career_school_id_fkey FOREIGN KEY (school_id)
    REFERENCES school (school_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS career
    ADD CONSTRAINT career_workplace_id_fkey FOREIGN KEY (workplace_id)
    REFERENCES workplace (workplace_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS country_language
    ADD CONSTRAINT country_language_country_id_fkey FOREIGN KEY (country_id)
    REFERENCES country (country_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS country_language
    ADD CONSTRAINT country_language_language_id_fkey FOREIGN KEY (language_id)
    REFERENCES language (language_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person
    ADD CONSTRAINT person_address_id_fkey FOREIGN KEY (address_id)
    REFERENCES address (address_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person
    ADD CONSTRAINT person_contactpoint_id_fkey FOREIGN KEY (contactpoint_id)
    REFERENCES contactpoint (contactpoint_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person
    ADD CONSTRAINT person_personcategory_id_fkey FOREIGN KEY (personcategory_id)
    REFERENCES personcategory (personcategory_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person
    ADD CONSTRAINT person_school_id_fkey FOREIGN KEY (school_id)
    REFERENCES school (school_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person
    ADD CONSTRAINT person_workplace_id_fkey FOREIGN KEY (workplace_id)
    REFERENCES workplace (workplace_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person_country
    ADD CONSTRAINT person_country_country_id_fkey FOREIGN KEY (country_id)
    REFERENCES country (country_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS person_country
    ADD CONSTRAINT person_country_person_id_fkey FOREIGN KEY (person_id)
    REFERENCES person (person_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project
    ADD CONSTRAINT project_client_id_fkey FOREIGN KEY (client_id)
    REFERENCES person (person_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project
    ADD CONSTRAINT project_workplace_id_fkey FOREIGN KEY (workplace_id)
    REFERENCES workplace (workplace_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project_author
    ADD CONSTRAINT project_author_author_id_fkey FOREIGN KEY (author_id)
    REFERENCES person (person_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project_author
    ADD CONSTRAINT project_author_project_id_fkey FOREIGN KEY (project_id)
    REFERENCES project (project_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project_skill
    ADD CONSTRAINT project_skill_project_id_fkey FOREIGN KEY (project_id)
    REFERENCES project (project_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS project_skill
    ADD CONSTRAINT project_skill_skill_id_fkey FOREIGN KEY (skill_id)
    REFERENCES skill (skill_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS school
    ADD CONSTRAINT school_address_id_fkey FOREIGN KEY (address_id)
    REFERENCES address (address_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS school_contactpoint
    ADD CONSTRAINT school_contactpoint_contactpoint_id_fkey FOREIGN KEY (contactpoint_id)
    REFERENCES contactpoint (contactpoint_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS school_contactpoint
    ADD CONSTRAINT school_contactpoint_school_id_fkey FOREIGN KEY (school_id)
    REFERENCES school (school_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill
    ADD CONSTRAINT skill_ability_id_fkey FOREIGN KEY (ability_id)
    REFERENCES ability (ability_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill
    ADD CONSTRAINT skill_activity_id_fkey FOREIGN KEY (activity_id)
    REFERENCES activity (activity_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill
    ADD CONSTRAINT skill_application_id_fkey FOREIGN KEY (application_id)
    REFERENCES application (application_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill
    ADD CONSTRAINT skill_knowledge_id_fkey FOREIGN KEY (knowledge_id)
    REFERENCES knowledge (knowledge_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill
    ADD CONSTRAINT skill_language_id_fkey FOREIGN KEY (language_id)
    REFERENCES language (language_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill_skillsubcategory
    ADD CONSTRAINT skill_skillsubcategory_skill_id_fkey FOREIGN KEY (skill_id)
    REFERENCES skill (skill_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skill_skillsubcategory
    ADD CONSTRAINT skill_skillsubcategory_skillsubcategory_id_fkey FOREIGN KEY (skillsubcategory_id)
    REFERENCES skillsubcategory (skillsubcategory_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS skillsubcategory
    ADD CONSTRAINT skillsubcategory_skillcategory_id_fkey FOREIGN KEY (skillcategory_id)
    REFERENCES skillcategory (skillcategory_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS workplace
    ADD CONSTRAINT workplace_address_id_fkey FOREIGN KEY (address_id)
    REFERENCES address (address_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS workplace_contactpoint
    ADD CONSTRAINT workplace_contactpoint_contactpoint_id_fkey FOREIGN KEY (contactpoint_id)
    REFERENCES contactpoint (contactpoint_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS workplace_contactpoint
    ADD CONSTRAINT workplace_contactpoint_workplace_id_fkey FOREIGN KEY (workplace_id)
    REFERENCES workplace (workplace_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;