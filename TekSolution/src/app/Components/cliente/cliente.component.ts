import { Component, Input, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Cliente, ClienteDireccion, ClienteRegistro } from '../interfaces/Cliente.interface';
import { ClienteService } from '../services/cliente.service';
import { ToastrService } from 'ngx-toastr';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {
  clienteLista: Cliente[]=[];
  clienteDireccionLista: ClienteDireccion[]=[];
  btnDisabled: boolean = true;
  routeIdCliente    :number =0;
  // @Input() idCliente: number = 0;

  constructor(
    private clienteService: ClienteService,
    private toastr: ToastrService,
    private fb: FormBuilder,
    private activatedRoute: ActivatedRoute

    ) {

    }

  ngOnInit(): void {
    // this.activatedRoute.params.subscribe(({idCliente})=>{
    //   console.log(idCliente);

    //    this.idCliente = idCliente })

    this.obtenerCliente();
    this.btnDisable();

  }
  formId: FormGroup = this.fb.group({
    id:[,]
  })
  formBusqueda: FormGroup = this.fb.group({
    criterio:   [''],
  })
  formRegistro: FormGroup = this.fb.group({
    nombre:     ['', [Validators.required]],
    apellido:   ['', [Validators.required]],
    telefono:   [,],
    cedula:     [,],
    provincia:  [''],
    sector:     [''],
    calle:      [''],
    casaNumero: [''],
  });
  busquedaCriterio ={
    criterio:''
  }
  getIdCliente(id: number){
    localStorage.setItem( 'id',JSON.stringify(id));
  }
  validarCampos(nombreCampo: string) {
    return this.formRegistro.get(nombreCampo)?.invalid &&
           this.formRegistro.get(nombreCampo)?.touched
  }
  btnDisable(){
    return this.formRegistro.valid  ? this.btnDisabled = false: this.btnDisabled = true;
  }
  obtenerCliente(){
    this.busquedaCriterio.criterio = this.formBusqueda.get('criterio')?.value;
    this.clienteService.getClienteLista(this.busquedaCriterio.criterio)
    .subscribe(cliente => {


      this.clienteLista = cliente;
    })
  }
  eliminarCliente(id: number){
    this.clienteService.deleteCliente(id).subscribe(()=>{
      this.obtenerCliente();
    this.toastr.error('Cliente eliminado!')
    })
  }
  modeloRegistroCliente(){
    const model: ClienteRegistro ={
      nombre: this.formRegistro.get('nombre')?.value,
      apellido: this.formRegistro.get('apellido')?.value,
      cedula: this.formRegistro.get('cedula')?.value,
      telefono: this.formRegistro.get('telefono')?.value,
      casaNumero: this.formRegistro.get('casaNumero')?.value,
      sector: this.formRegistro.get('sector')?.value,
      provincia: this.formRegistro.get('provincia')?.value,
      calle: this.formRegistro.get('calle')?.value
    }
    return model;
  }
  registroCliente(){
  const model : ClienteRegistro = this.modeloRegistroCliente();

  this.clienteService.postCliente(model).subscribe(() => {
    this.obtenerCliente()
    this.toastr.success('Cliente agregado!')

  });
  
  }
}
