using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
/// <summary>
/// Summary description for DataService
/// </summary>
[WebService]
public class DataService : System.Web.Services.WebService
{
    public DataService()
    {

    }

    //public class Customer
    //{
    //    public string FirstName;
    //    public string LastName;
    //    public string CompanyName;
    //}

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public string GetCustomer()
    {
        string[] customerList = new string[]{};

        customerList[0] = "FirstName:first,LastName:last,Company:Com1";
        customerList[1] = "FirstName:first2,LastName:last2,Company:Com2";
        return new JavaScriptSerializer().Serialize(customerList);

    }

}