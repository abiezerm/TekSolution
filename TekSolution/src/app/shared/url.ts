import { environment } from '../../environments/environment';

let API = environment.api;
export let APIURL = {
    Cliente:{
        listarCliente: API + 'Cliente/ReadCliente',
        listarClienteDireccion: API + 'Cliente/ReadClienteDireccion',
        insertaCliente: API + 'Cliente/CreateCliente',
        insertaClienteDireccion: API + 'Cliente/CreateClienteDireccion',
        eliminarCliente: API + 'Cliente/DeleteCliente?id=',
        eliminarDireccion: API + 'Cliente/DeleteDireccion?id='
    }
}