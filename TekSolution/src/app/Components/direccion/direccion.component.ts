import { Component, Input, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { Cliente, ClienteDireccion } from '../interfaces/Cliente.interface';
import { ClienteService } from '../services/cliente.service';

@Component({
  selector: 'app-direccion',
  templateUrl: './direccion.component.html',
  styleUrls: ['./direccion.component.css']
})
export class DireccionComponent implements OnInit {
  clienteDireccionLista: ClienteDireccion[]=[];
  routeIdCliente    :number =0;
   idCliente :number=0;
  clienteLista:Cliente[]=[];
  btnDisabled: boolean = true;

  constructor(
    private clienteService: ClienteService,
    private toastr: ToastrService,
    private fb: FormBuilder,
    private activatedRoute: ActivatedRoute
    ) { 
      this.activatedRoute.params.subscribe((id) => {
        this.routeIdCliente= Number(id['idCliente']);
      });
    }

  ngOnInit(): void {
    this.clienteDireccionCliente()
    this.obtenerCliente();
    this.btnDisable();

  }
  formBusqueda: FormGroup = this.fb.group({
    idCliente:   [''],
  })
 
  formRegistro: FormGroup = this.fb.group({
    idCliente: [,],
    provincia: [''],
    sector:    [''],
    calle:     [''],
    casaNumero:[''],
  });
  busquedaCriterio ={
    idCliente:''
  }
  clienteDireccionCliente(){
    this.idCliente = Number( localStorage.getItem('id'));
    
    // this.busquedaCriterio.idCliente = this.formBusqueda.get('idCliente')?.value;
    this.clienteService.getClienteDireccionLista(this.idCliente)
    .subscribe(clienteDireccion => {
      
      this.clienteDireccionLista = clienteDireccion;
    })
  }
  obtenerCliente(){
    this.clienteService.getClienteLista(JSON.stringify( this.idCliente))
    .subscribe(cliente => {

      this.clienteLista = cliente;
    })
  }
  validarCampos(nombreCampo: string) {
    return this.formRegistro.get(nombreCampo)?.invalid &&
           this.formRegistro.get(nombreCampo)?.touched
  }
  btnDisable(){
    return this.formRegistro.valid  ? this.btnDisabled = false: this.btnDisabled = true;
  }
  eliminarDireccion(id: number){
    this.clienteService.deleteDireccion(id).subscribe(()=>{
      this.clienteDireccionCliente();
    this.toastr.error('Dirección eliminada!')
    })
  }
  registroDireccion(){
    if (this.formRegistro.valid) {
      const model : ClienteDireccion ={
        clienteId: 6,
        casaNumero: this.formRegistro.get('casaNumero')?.value,
        sector: this.formRegistro.get('sector')?.value,
        provincia: this.formRegistro.get('provincia')?.value,
        calle: this.formRegistro.get('calle')?.value,
        direccionId: 0
      }
  
      this.clienteService.postClienteDireccion(model).subscribe(()=>{
        this.clienteDireccionCliente();
        this.toastr.success('Dirección insertada!')
      })
      
    }
  }
}
