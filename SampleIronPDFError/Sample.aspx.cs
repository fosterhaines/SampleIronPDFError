using IronPdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleIronPDFError
{
    public partial class Sample : System.Web.UI.Page
    {
        protected Invoice _Invoice { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            _Invoice = new Invoice();
            _Invoice.InvoiceNumber = "123IN";
            _Invoice.InvoiceDate = "12/10/2019";
            _Invoice.PONumber = "123PO";
            _Invoice.PODate = "12/12/2019";
            _Invoice.ShipTo = "123 Main St, West Bend, WI  53095";
            _Invoice.InvoiceAmount = "$12,102";
            _Invoice.PackingListNumber ="435klfjg";

            IronPdf.License.LicenseKey =
               System.Configuration.ConfigurationManager.AppSettings.Get("IronPdf.License.LicenseKey");
            if (IronPdf.License.IsLicensed)
            {
                IronPdf.AspxToPdf.RenderThisPageAsPdf(AspxToPdf.FileBehavior.InBrowser);
                //IronPdf.AspxToPdf.RenderThisPageAsPdf(AspxToPdf.FileBehavior.InBrowser, "MyPdf.pdf", new PdfPrintOptions() { DPI = 300 });
            }
        }
    }
    public class Invoice
    {
        public string InvoiceNumber { get; set; }
        public string InvoiceDate { get; set; }
        public string PONumber { get; set; }
        public string PODate { get; set; }
        public string ShipTo { get; set; }
        public string InvoiceAmount { get; set; }
        public string PackingListNumber { get; set; }
    }
}