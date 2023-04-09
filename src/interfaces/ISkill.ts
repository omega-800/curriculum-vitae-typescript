export interface ISkillsList {
  languages: ISkillList;
  it: ISkillList;
  office: ISkillList;
  personal: ISkillList;
}

export interface ISkillList {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  itemListElement: ISkill[];
}

export interface ISkill {
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
