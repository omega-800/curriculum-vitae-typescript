export interface ISpokenLanguages {
  de: ISpokenLanguage;
  en: ISpokenLanguage;
  ru: ISpokenLanguage;
  fr: ISpokenLanguage;
}

export interface ISpokenLanguage {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  alternateName: string;
  speakingOf: string;
  sameAs: string[];
}