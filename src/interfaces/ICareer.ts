export interface ICareers {
    careers: ICareer[];
}
  
export interface ICareer {
    from:number,
    to:number,
    school_name?:string,
    workplace_name?:string
}

