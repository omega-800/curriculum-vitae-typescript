export interface Schools {
  probstei: School;
  hopro: School;
  sek: School;
  ims: School;
  bzz: School;
}

export interface School {
  '@context': string;
  '@type': string;
  '@id': string;
  address: Address;
  contactPoint: ContactPoint[];
  description: string;
  email?: string;
  image: string;
  logo: string;
  name: string;
  url: string;
  from: number;
  to:number;
  type: string;
  sameAs?: string[];
}

export interface ContactPoint {
  '@type': string;
  contactType: string;
  telephone: string;
  email?: string;
}

export interface Address {
  '@type': string;
  streetAddress: string;
  addressLocality: string;
  addressRegion: string;
  postalCode: string;
  addressCountry: string;
}