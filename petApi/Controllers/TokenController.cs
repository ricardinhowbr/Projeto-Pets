using System;
using System.Text;
using System.Security.Claims;
using System.IdentityModel.Tokens.Jwt;

using petApi.DTO;

using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Extensions.Configuration;

namespace petApi.Controllers
{
    [Route("pet/api/[Controller]")]
    [ApiController]

    public class TokenController : Controller
    {
        private readonly IConfiguration configuration;

        public TokenController(IConfiguration config)
        {
            //Para cessar a chave definida no appsetings.json usando a injeção de dependência...
            this.configuration = config;
        }

        [AllowAnonymous]
        [HttpPost]
        public IActionResult RequestToken([FromBody] Usuario request)
        {
            //Método para gerar um token para usuários que estão pedindo autenticação, validando suas credenciais.

            //TODO: -> elaborar validação mais decente...
            if(request.login == "admin" && request.senha=="123")
            {
                var claims = new[]
                {
                     new Claim(ClaimTypes.Name, request.nome_usu)
                     //,new Claim(ClaimTypes.Role, "Admin") //Definir perfil do usuários, se quiser...
                };

                //recebe uma instancia da classe SymmetricSecurityKey armazenando a chave de criptografia usada na criação do token.
                var key = new SymmetricSecurityKey(
                    Encoding.UTF8.GetBytes(configuration["SecurityKey"])); //Chave que foi adicionada no appsettings.json

                //recebe um objeto do tipo SigninCredentials contendo a chave de 
                //criptografia e o algoritmo de segurança empregados na geração 
                // de assinaturas digitais para tokens
                var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256); 

                var issuer = configuration["Issuer"]; 
                var audience = configuration["Audience"]; 

                var token = new JwtSecurityToken(
                    issuer: issuer,  //emissor - Teste Pudim Issuer"
                    audience: audience, //"Teste Pudim Audience"
                    claims: claims,
                    expires: DateTime.Now.AddMinutes(15), //Validade do token
                    signingCredentials: creds
                );

                return Ok(new 
                {
                    token = new JwtSecurityTokenHandler().WriteToken(token)
                });
            }
            
            return BadRequest("Credenciais inválidas...");
        }
    }
}