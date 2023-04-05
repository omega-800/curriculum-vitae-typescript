export interface Languages {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  description: string;
  keywords: string;
  itemListElement: Language[];
}

export interface Language {
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