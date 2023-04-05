export interface Office {
  '@context': string;
  '@type': string;
  '@id': string;
  name: string;
  applicationCategory: string;
  operatingSystem: string;
  description: string;
  keywords: string;
  url: string;
  version: string;
  hasPart: Application[];
}

export interface Application {
  '@type': string;
  '@id': string;
  name: string;
  applicationCategory: string;
  operatingSystem: string;
  description: string;
  keywords: string;
  url: string;
  version: string;
}