using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

public partial class background_admit_delete : System.Web.UI.Page
{
    Operation op = new Operation();
    DBClass dbObj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.labIamge.Visible = false;
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {

         try
        {
            this.labIamge.Visible = true;
            labIamge.Text = "";
            if (imageUpload.PostedFile.FileName == "")
            {
                WebMessageBox.Show("要上传的文件不允许为空！");
                return;
            }
            else
            {
                string filePath = imageUpload.PostedFile.FileName;
                string filename = filePath.Substring(filePath.LastIndexOf("//") + 1);
                string fileEx = filePath.Substring(filePath.LastIndexOf(".") + 1);
                string relativepath = "image/ftp/" + filename;
                string strSql = "select * from tb_Shop where imagename='" + storeName.Text.Trim() + "'";
                DataTable dsTable = dbObj.GetDataSetStr(strSql, "tb_Shop");
                if (dsTable.Rows.Count > 0)
                {
                    WebMessageBox.Show("该图片已经存在！");
                }
                else
                {
                    //判断图片格式
                    if (fileEx == "jpg" || fileEx == "png" || fileEx == "gif")
                    {

                        op.InsertShop(TypeName.Text.Trim(), relativepath, storeName.Text.Trim(), Convert.ToUInt32(Price.Text.Trim()),  Type.Text.Trim(), Textarea1.Value.Trim(),CheckBox1.Checked);
                        WebMessageBox.Show("上传成功");
                    }
                    else
                    {
                        WebMessageBox.Show("上传的图片扩展名错误！");

                    }

                }

            }

        }
        catch (Exception error)
        {
            labIamge.Text = "处理发生错误！原因：" + error.ToString();
        }
    } 
      
}//不要超出这