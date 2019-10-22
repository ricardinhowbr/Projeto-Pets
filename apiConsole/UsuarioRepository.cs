using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace apiConsole
{
    public class UsuarioRepository
    {
        HttpClient client = new HttpClient();

        public UsuarioRepository()
        {
            this.client.BaseAddress = new Uri("http://localhost:5000/");

            this.client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
        }

        public async Task<List<Usuario>> GetUsuarioAsyn()
        {
            HttpResponseMessage response = await this.client.GetAsync("pet/api/usuarios");

            if(response.IsSucessStatusCode)
            {
                var dados = await response.Content.ReadAsStringAsync();
                return new JsonConvert.DeserializerObject<List<Usuario>>(dados);
            }

            return new List<Usuario>();
        }
    }
}