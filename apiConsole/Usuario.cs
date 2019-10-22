namespace apiConsole
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Senha { get; set; }
        public string Email { get; set; }

        public override string ToString()
        {
            return string.Format($"{this.Nome} - {this.Email}");
        }
    }
}