
export interface SkillsList {
  languages: SkillList;
  it: SkillList;
  office: SkillList;
  personal: SkillList;
}

export interface SkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  itemListElement: Skill[];
}

export interface Skill {
  '@type': string;
  '@id': string;
  name?: string;
  description: string;
  proficiencyLevel: string;
  yearsOfExperience: number;
  knowledgePercent: number;
  application_id?: string;
  application_name?: string;
  language_id?: string;
  language_name?: string;
  slanguage_id?: string;
  slanguage_name?: string;
}
