
export interface ClienteDireccion {
    direccionId: number;
    clienteId:  number;
    casaNumero: string;
    sector:     string;
    provincia:  string;
    calle:      string;
}

export interface Cliente {
    clienteId:         number;
    nombre:            string;
    apellido:          string;
    cedula:            string;
    telefono:          string;
}


export interface ClienteRegistro {
    nombre:     string;
    apellido:   string;
    cedula:     string;
    telefono:   string;
    casaNumero: string;
    sector:     string;
    provincia:  string;
    calle:      string;
}

