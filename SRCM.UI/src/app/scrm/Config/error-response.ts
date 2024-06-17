export interface ErrorResponse {
  totalRecords :number ,
  success : boolean,
  statusCode: number,
  message:string,
  responseData:object,
  token:string,
  transationId:number
}
