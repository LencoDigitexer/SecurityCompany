﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DemoEXZWPF
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DemoEXZEntities : DbContext
    {
        private static DemoEXZEntities _instance;
        public DemoEXZEntities()
            : base("name=DemoEXZEntities")
        {
        }
    
        public static DemoEXZEntities Instance()
        {
            if (_instance == null)
                _instance = new DemoEXZEntities();
            return _instance;
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Task> Task { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}
