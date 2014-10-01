using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SalgariSite.Models
{
    public class Film
    {
         public int Id { get; set; }
         [Required, StringLength(256)]

         public String Title { get; set; }
         [Required, StringLength(256)]
        
         public String Cover { get; set; }
         public String Img1 { get; set; }
         public String Img2 { get; set; }
         public String Description { get; set; }
         public String Img3 { get; set; }
        

    }
}