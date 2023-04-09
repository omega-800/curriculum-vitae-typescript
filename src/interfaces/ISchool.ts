import { IContactPoint } from "./IContactPoint";
import { IAddress } from "./IAddress";

export interface ISchools {
  probstei: ISchool;
  hopro: ISchool;
  sek: ISchool;
  ims: ISchool;
  bzz: ISchool;
}

export interface ISchool {
  '@context': string;
  '@type': string;
  '@id': string;
  address: IAddress;
  contactPoint: IContactPoint[];
  description: string;
  email?: string;
  image: string;
  logo: string;
  name: string;
  url: string;
  type: string;
  sameAs?: string[];
}
