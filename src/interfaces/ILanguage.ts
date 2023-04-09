export interface ILanguages {
  '@context': string;
  '@type': string;
  name: string;
  description: string;
  keywords: string;
  itemListElement: ILanguage[];
}

export interface ILanguage {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  alternateName: string;
  applicationCategory: string;
  operatingSystem: string;
  description: string;
  keywords: string;
  url: string;
  version: string;
}