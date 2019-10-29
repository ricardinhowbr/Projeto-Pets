using System;

namespace petApi.DTO
{
    [Serializable()]
    public class EntidadeBase
    {
        public virtual bool Equals(object obj)
        {
            return base.Equals(obj);
        }
        public virtual int GetHashCode()
        {
            return base.GetHashCode();
        }
    }
}