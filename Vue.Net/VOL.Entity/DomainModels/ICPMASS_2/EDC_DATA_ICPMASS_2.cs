/*
 *代码由框架生成,任何更改都可能导致被代码生成器覆盖
 *如果數據庫字段发生變化，請在代码生器重新生成此Model
 */
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VOL.Entity.SystemModels;

namespace VOL.Entity.DomainModels
{
    [Entity(TableCnName = "ICPMASS_2",TableName = "EDC_DATA_ICPMASS_2",DBServer = "EDCDbContext")]
    public partial class EDC_DATA_ICPMASS_2:EDCEntity
    {
        /// <summary>
       ///
       /// </summary>
       [Key]
       [Display(Name ="ICPMASSId")]
       [Column(TypeName="uniqueidentifier")]
       [Required(AllowEmptyStrings=false)]
       public Guid ICPMASSId { get; set; }

       /// <summary>
       ///MFG Date
       /// </summary>
       [Display(Name ="MFG Date")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public DateTime MFG_Date { get; set; }

       /// <summary>
       ///Operator
       /// </summary>
       [Display(Name ="Operator")]
       [MaxLength(20)]
       [Column(TypeName="char(20)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string Operator { get; set; }

       /// <summary>
       ///Wafer Size
       /// </summary>
       [Display(Name ="Wafer Size")]
       [Column(TypeName="smallint")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int WaferSize { get; set; }

       /// <summary>
       ///Sample Vol
       /// </summary>
       [Display(Name ="Sample Vol")]
       [Column(TypeName="smallint")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int SampleVolume { get; set; }

       /// <summary>
       ///Seq.
       /// </summary>
       [Display(Name ="Seq.")]
       [Column(TypeName="smallint")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public int Seq { get; set; }

       /// <summary>
       ///Lot ID
       /// </summary>
       [Display(Name ="Lot ID")]
       [MaxLength(36)]
       [Column(TypeName="char(36)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string LotID { get; set; }

       /// <summary>
       ///Element
       /// </summary>
       [Display(Name ="Element")]
       [MaxLength(2)]
       [Column(TypeName="char(2)")]
       [Editable(true)]
       [Required(AllowEmptyStrings=false)]
       public string Element { get; set; }

       /// <summary>
       ///MW
       /// </summary>
       [Display(Name ="MW")]
       [DisplayFormat(DataFormatString="8,4")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? MW { get; set; }

       /// <summary>
       ///ppb
       /// </summary>
       [Display(Name ="ppb")]
       [DisplayFormat(DataFormatString="8,4")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? ppb { get; set; }

       /// <summary>
       ///Value E10
       /// </summary>
       [Display(Name ="Value E10")]
       [DisplayFormat(DataFormatString="8,4")]
       [Column(TypeName="decimal")]
       [Editable(true)]
       public decimal? ValueE10 { get; set; }

       /// <summary>
       ///Box Clean ID
       /// </summary>
       [Display(Name ="Box Clean ID")]
       [MaxLength(20)]
       [Column(TypeName="char(20)")]
       [Editable(true)]
       public string BoxCleanID { get; set; }

       /// <summary>
       ///Category
       /// </summary>
       [Display(Name ="Category")]
       [MaxLength(10)]
       [Column(TypeName="nchar(10)")]
       [Editable(true)]
       public string Category { get; set; }

       /// <summary>
       ///Input Time
       /// </summary>
       [Display(Name ="Input Time")]
       [Column(TypeName="datetime")]
       [Editable(true)]
       public DateTime? InputTime { get; set; }

       /// <summary>
       ///Result
       /// </summary>
       [Display(Name ="Result")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string Result { get; set; }

       /// <summary>
       ///Q1SPC
       /// </summary>
       [Display(Name ="Q1SPC")]
       [MaxLength(1)]
       [Column(TypeName="char(1)")]
       [Editable(true)]
       public string Q1SPC { get; set; }

       /// <summary>
       ///Q1SPCFlag
       /// </summary>
       [Display(Name ="Q1SPCFlag")]
       [Column(TypeName="int")]
       public int? Q1SPCFlag { get; set; }

       /// <summary>
       ///Q1SPCErrorText
       /// </summary>
       [Display(Name ="Q1SPCErrorText")]
       [MaxLength(1024)]
       [Column(TypeName="nvarchar(1024)")]
       public string Q1SPCErrorText { get; set; }

       
    }
}