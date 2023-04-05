export interface SpokenLanguages {
  de: SpokenLanguage;
  en: SpokenLanguage;
  ru: SpokenLanguage;
  fr: SpokenLanguage;
}

export interface SpokenLanguage {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  alternateName: string;
  speakingOf: string;
  sameAs: string[];
}