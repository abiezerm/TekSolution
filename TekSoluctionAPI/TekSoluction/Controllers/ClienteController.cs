using CORE.Interfaces;
using CORE.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;

namespace TekSoluction.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {

        readonly IConfiguration _configuration;
        IClienteService _clienteService;

        public ClienteController(IConfiguration configuration, IClienteService clienteService)
        {
            _configuration = configuration;
            _clienteService = clienteService;
        }


        [HttpGet("ReadCliente")]
        public ActionResult< List<ClienteLista>> ReadCliente(string criterio)
        {

         return Ok(_clienteService.ReadCliente(criterio));
        }

        [HttpGet("ReadClienteDireccion")]
        public ActionResult<List<ClienteDireccion>> ReadClienteDireccion(string idCliente)
        {

            return Ok(_clienteService.ReadClienteDireccion(idCliente));
        }

        [HttpPost("CreateCliente")]
        public ActionResult CreateCliente([FromBody] Cliente cliente)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    _clienteService.CreateCliente(cliente);
                    return Ok();
                }
                catch (Exception xx)
                {
                    if (xx.Message.Contains("201"))
                    {
                        return Created(xx.Message, cliente);

                    }
                    else if (xx.Message.Contains("202"))
                    {
                        return Accepted();

                    }
                    return StatusCode(500, xx.Message);
                }
            }
            return BadRequest();
        }

        [HttpPost("CreateClienteDireccion")]
        public ActionResult CreateClienteDireccion([FromBody] ClienteDireccion clienteDireccion)
        {

            if (ModelState.IsValid)
            {
                try
                {
                    _clienteService.CreateClienteDireccion(clienteDireccion);
                    return Ok();
                }
                catch (Exception xx)
                {
                    if (xx.Message.Contains("201"))
                    {
                        return Created(xx.Message, clienteDireccion);

                    }
                    else if (xx.Message.Contains("202"))
                    {
                        return Accepted();

                    }
                    return StatusCode(500, xx.Message);
                }
            }
            return BadRequest();
        }

        [HttpPost("DeleteCliente")]
        public ActionResult DeleteCliente(int id)
        {
            if (id <= 0)
            {
                return NotFound();
            }
            _clienteService.DeleteCliente(id);
            return NoContent();
        }
        [HttpPost("DeleteDireccion")]
        public ActionResult DeleteDireccion(int id)
        {
            if (id <= 0)
            {
                return NotFound();
            }
            _clienteService.DeleteDireccion(id);
            return NoContent();
        }

    }
}
