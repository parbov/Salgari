using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SalgariSite.Models
{
    public class Book
    {
        public int Id { get; set; }
        [Required, StringLength(256)]
        public string Title { get; set; }
        [Required, StringLength(256)]
        public string EngTitle { get; set; }
        [StringLength(256)]
        public string Year { get; set; }
        [StringLength(256)]
        public string Cover { get; set; }
        public string Description { get; set; }

        public int CategoryId { get; set; }

        public virtual Category Category { get; set; }
    }
}