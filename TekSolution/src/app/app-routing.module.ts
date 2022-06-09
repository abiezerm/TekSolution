import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ClienteComponent } from './Components/cliente/cliente.component';
import { DireccionComponent } from './Components/direccion/direccion.component';

const routes: Routes = [
  {
    path:'',
    component: ClienteComponent
  },
  {
    path:'direcciones/:clienteId',
    component: DireccionComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
