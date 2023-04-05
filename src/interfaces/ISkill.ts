export interface SkillsList {
  languages: LanguagesSkillList;
  it: ItSkillList;
  office: OfficeSkillList;
  personal: PersonalSkillList;
}

export interface PersonalSkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  numberOfItems: number;
  itemListElement: PersonalSkill[];
}

export interface PersonalSkill {
  '@type': string;
  '@id': string;
  position: number;
  name: string;
  description: string;
  proficiencyLevel: string;
  yearsOfExperience: number;
  knowledgePercent: number;
}

export interface OfficeSkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  numberOfItems: number;
  itemListElement: OfficeSkill[];
}

export interface OfficeSkill {
  '@type': string;
  '@id': string;
  position: number;
  application_id: string;
  application_name: string;
  description: string;
  proficiencyLevel: string;
  yearsOfExperience: number;
  knowledgePercent: number;
}

export interface ItSkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  numberOfItems: number;
  itemListElement: ItSkill[];
}

export interface ItSkill {
  '@type': string;
  '@id': string;
  position: number;
  language_id: string;
  language_name: string;
  description: string;
  proficiencyLevel: string;
  yearsOfExperience: number;
  knowledgePercent: number;
}

export interface LanguagesSkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  numberOfItems: number;
  itemListElement: LanguagesSkill[];
}

export interface LanguagesSkill {
  '@type': string;
  '@id': string;
  position: number;
  slanguage_id: string;
  slanguage_name: string;
  description: string;
  proficiencyLevel: string;
  yearsOfExperience: number;
  knowledgePercent: number;
}