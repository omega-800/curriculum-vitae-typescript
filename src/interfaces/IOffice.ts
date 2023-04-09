export interface IOffice {
  '@context': string;
  '@type': string;
  name: string;
  applicationCategory: string;
  operatingSystem: string;
  description: string;
  keywords: string;
  url: string;
  version: string;
  hasPart: IApplication[];
}

export interface IApplication {
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