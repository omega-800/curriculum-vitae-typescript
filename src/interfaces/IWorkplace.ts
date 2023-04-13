import { IContactPoint } from "./IContactPoint";
import { IAddress } from "./IAddress";

export interface IWorkplaces {
  inteco: IWorkplace;
  ernestovargas: IWorkplace;
}

export interface IWorkplace {
  '@context': string;
  '@type': string;
  '@id': string;
  description: string;
  name: string;
  legalName: string;
  url: string;
  logo: string;
  foundingDate?: string;
  founders: IFounder[];
  address: IAddress;
  contactPoint: IContactPoint[];
  sameAs: string[];
}

export interface IFounder {
  '@type': string;
  name: string;
}