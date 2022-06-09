import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { APIURL } from '../../shared/url';
import { Cliente, ClienteDireccion } from '../interfaces/Cliente.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {

  constructor(private http: HttpClient) { }

  deleteCliente(id: number){
    return this.http.post(APIURL.Cliente.eliminarCliente + id,null)
  }
  deleteDireccion(id: number){
    return this.http.post(APIURL.Cliente.eliminarDireccion + id,null)
  }
  getClienteLista(criterio: string):Observable<Cliente[]>{
    return this.http.get<Cliente[]>(`${APIURL.Cliente.listarCliente}?criterio=${criterio}`)
  }
  getClienteDireccionLista(idCliente: number):Observable<ClienteDireccion[]>{
    return this.http.get<ClienteDireccion[]>(`${APIURL.Cliente.listarClienteDireccion}?idCliente=${idCliente}`)
  }
  postCliente(cliente: any):Observable<Cliente[]>{
    return this.http.post<Cliente[]>(APIURL.Cliente.insertaCliente,cliente)
  }
  postClienteDireccion(clienteDireccion: ClienteDireccion):Observable<ClienteDireccion>{
    return this.http.post<ClienteDireccion>(APIURL.Cliente.insertaClienteDireccion,clienteDireccion)
  }
}
