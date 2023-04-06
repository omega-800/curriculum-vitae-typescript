export interface Workplaces {
  inteco: Workplace;
  ernestovargas: Workplace;
}

export interface Workplace {
  '@context': string;
  '@type': string;
  '@id': string;
  description: string;
  name: string;
  legalName: string;
  url: string;
  logo: string;
  foundingDate?: string;
  founders: Founder[];
  address: Address;
  contactPoint: ContactPoint[];
  sameAs: string[];
}

export interface ContactPoint {
  '@type': string;
  contactType: string;
  telephone?: string;
  email: string;
}

export interface Address {
  '@type': string;
  streetAddress: string;
  addressLocality: string;
  addressRegion: string;
  postalCode: string;
  addressCountry: string;
}

export interface Founder {
  '@type': string;
  name: string;
}