using System;
using NHibernate;

namespace petApi.DTO
{
    public class StaticBroker
    {
        [ThreadStatic]
        private static ISession threadSession;

        public static ISession ThreadSession
        {
            get { return threadSession; }
            set { threadSession = value; }
        }

        public static ISession CurrentSession { get; set; }
        public static ISessionFactory SessionFactory { get; set; }
    }
}