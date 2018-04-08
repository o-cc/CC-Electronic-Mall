using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Operation 网站业务流程类（封装所有业务方法）
/// </summary>
public class Operation
{
    public Operation()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    DataBase data = new DataBase();
    DBClass dbObj = new DBClass();

    //查找所有的商品
    public DataSet SelectAllShop()
    {
        return data.RunProcReturn("Select * from tb_Shop order by date desc", "tb_Shop");
    }
    //用户留言查找
    public DataSet selectBgWord()
    {
        return data.RunProcReturn("Select * from tb_LeaveWord", "tb_LeaveWord");
    }
    //用户留言查找(根据是否回复)
    public DataSet selectWord()
    {
        return data.RunProcReturn("Select * from tb_LeaveWord where isConfirm =1", "tb_LeaveWord");
    }
    //用户留言查找(根据用户名)
    public DataSet selectWord(string users)
    {
        return data.RunProcReturn("Select * from tb_LeaveWord where users ='"+users+"'", "tb_LeaveWord");
    }
    //后台管理会员
    public DataSet SelectMember()
    {
        return data.RunProcReturn("Select * from tb_Member", "tb_Member");//and showday<getdate() 
    }
    public DataSet SelectMember(string users)
    {
        return data.RunProcReturn("Select * from tb_Member where users ='"+users+"'", "tb_Member");//and showday<getdate() 
    }
    //后台管理会员之绑定地址
    public DataSet SelectMemberAddress()
    {

        return data.RunProcReturn("Select * from tb_ReceiverAddress", "tb_ReceiverAddress");

    }
    public DataSet SelectMemberAddress(string users)
    {

        return data.RunProcReturn("Select * from tb_ReceiverAddress where users ='"+users+"'", "tb_ReceiverAddress");

    }
    //查找用户名 为了判断修改用户名的时候是否同名
    public DataSet SelectMemberName(int id ,string users)
    {

        return data.RunProcReturn("Select users from tb_Member where id !='"+id+"' and users='"+users+"'", "tb_Member");

    }

    //根据用户名查找地址
    public DataSet SelectAdrss(string name)
    {

        return data.RunProcReturn("Select * from tb_ReceiverAddress where users = '" + name + "'", "tb_ReceiverAddress");//and showday<getdate() 

    }
    //根据订单id找订单
    public DataSet SelectOrder(int OrderId)
    {

        return data.RunProcReturn("Select * from tb_OrderInfo where orderId = '" + OrderId + "'", "tb_OrderInfo");//and showday<getdate() 

    }
    //根据用户名找订单
    public DataSet SelectOrder(string users)
    {
        return data.RunProcReturn("Select * from tb_OrderInfo where users = '" + users + "'", "tb_OrderInfo");//and showday<getdate() 
    }
    //查找管理员表
    public DataSet SelectAdmit()
    {
        return data.RunProcReturn("Select * from db_Admit", "db_Admit");//and showday<getdate() 
    }
    //根据类型绑定前top个商品
    public DataSet SelectImage(string typename,int top)
    {
        return data.RunProcReturn("Select  top(" + top + ")* from tb_Shop where typename ='" + typename + "' order by date desc", "tb_Shop");//and showday<getdate() 
    }
    //绑定前top个最新商品
    public DataSet SelectNewInfo(int top)
    {
        return data.RunProcReturn("select  top(" + top + ") *from tb_Shop order by date desc ", "tb_Shop");
    }
    //绑定手机、办公设备类别的商品
    public DataSet SelectPhone(int top)
    {
        return data.RunProcReturn("select  top(" + top + ") * from tb_Shop where typename = '手机'or type='办公设备' order by date desc ", "tb_Shop");
    }
    //会员查找
    public DataSet SelectInfo(string users)
    {
        SqlParameter[] parns = {
                                     data.MakeInParam("@users",SqlDbType.VarChar,50,users)
                               };
        return data.RunProcReturn("select * from tb_Member where users= @users", parns, "tb_Member");
    }
    //查找地址表中编码
    public DataSet SelectBianma(string receiverAdderss)
    {
        return data.RunProcReturn("select bianma  from tb_ReceiverAddress where  receiverAddress= '" + receiverAdderss + "'", "tb_ReceiverAddress");
    }
    //查找地址表中的用户名
    public DataSet SelectUsers(string receiverName, string receiverPhone, string receiverAdderss)
    {
        return data.RunProcReturn("select users  from tb_ReceiverAddress where receiverAddress= '" + receiverAdderss + "'", "tb_ReceiverAddress");
    }

    //插入数据操作

    //插入地址
    public void InsertAddress(string receiverName, string receiverPhone, string receiverAddress, string bianma, string users)
    {
        SqlParameter[] parns = {
                                     data.MakeInParam("@receiverName",SqlDbType.VarChar,50,receiverName),
                                   data.MakeInParam("@receiverPhone",SqlDbType.VarChar,50,receiverPhone),
                                   data.MakeInParam("@receiverAddress",SqlDbType.VarChar,255,receiverAddress),
                                   data.MakeInParam("@bianma",SqlDbType.VarChar,50,bianma),
                                   data.MakeInParam("@users",SqlDbType.VarChar,50,users)
                                   
                                  
                               };
        data.RunProc("insert into tb_ReceiverAddress(receiverName,receiverPhone,receiverAddress,bianma,users) values(@receiverName,@receiverPhone,@receiverAddress,@bianma,@users)", parns);

    }
    //插入会员信息
    public void InsertMember(string phone, string users, string password, string realname)
    {
        SqlParameter[] parns = {
                                     data.MakeInParam("@phone",SqlDbType.VarChar,50,phone),
                                   data.MakeInParam("@users",SqlDbType.VarChar,50,users),
                                   data.MakeInParam("@password",SqlDbType.VarChar,50,password),
                                   data.MakeInParam("@realname",SqlDbType.VarChar,50,realname)
                                  
                               };
        data.RunProc("insert into tb_Member(phone,users,password,realname) values(@phone,@users,@password,@realname)", parns);

    }
    //插入用户留言
    public void InsertWord(string users, string title, string content1)
    {
        SqlParameter[] parns = {
                                     data.MakeInParam("@users",SqlDbType.VarChar,50,users),
                                   data.MakeInParam("@title",SqlDbType.VarChar,50,title),
                                   data.MakeInParam("@content1",SqlDbType.VarChar,50,content1)
                                   
                                  
                               };
        data.RunProc("insert into tb_LeaveWord(users,title,content1) values(@users,@title,@content1)", parns);

    }
    //添加管理员
    public void InsertAdmit(string users, string password, string realname,string phone)
    {
        SqlParameter[] parns = {
                                    data.MakeInParam("@users",SqlDbType.VarChar,50,users),
                                   data.MakeInParam("@password",SqlDbType.VarChar,50,password),
                                   data.MakeInParam("@realname",SqlDbType.VarChar,50,realname),
                                   data.MakeInParam("@phone",SqlDbType.VarChar,50,phone)
                                  
                               };
        data.RunProc("insert into db_Admit(users,password,realname,phone) values(@users,@password,@realname,@phone)", parns);

    }
    //添加商品
    public void InsertShop(string typename, string imageurl, string imagename, float price, string type, string introduct, bool isCheck)
    {
        SqlParameter[] parns = {
                                    data.MakeInParam("@typename",SqlDbType.NVarChar,255,typename),
                                   data.MakeInParam("@imageurl",SqlDbType.NVarChar,255,imageurl),
                                   data.MakeInParam("@imagename",SqlDbType.NVarChar,255,imagename),
                                   data.MakeInParam("@price",SqlDbType.Float,8,price),
                                  data.MakeInParam("@isCheck",SqlDbType.Bit,1,isCheck),
                                  data.MakeInParam("@type",SqlDbType.NVarChar,255,type),
                                  data.MakeInParam("@introduct",SqlDbType.NVarChar,255,introduct)

                               };
        data.RunProc("insert into tb_Shop(typename,imageurl,imagename,price,type,introduct,isCheck) values(@typename,@imageurl,@imagename,@price,@type,@introduct,@isCheck)", parns);

    }

    //添加订单详细信息
    public void InsertDetail(int shopID, int Num,int OrderID,float totalPrice)
    {
        SqlParameter[] parns = {
                                    data.MakeInParam("@shopID",SqlDbType.Int,32,shopID),
                                   data.MakeInParam("@Num",SqlDbType.Int,32,Num),
                                   data.MakeInParam("@OrderID",SqlDbType.Int,32,OrderID),
                                   data.MakeInParam("@totalPrice",SqlDbType.Float,8,totalPrice)
                                  
                               };
        data.RunProc("insert into tb_Detail(shopID,Num,OrderID,totalPrice) values(@shopID,@Num,@OrderID,@totalPrice)", parns);

    }

        /// <summary>
    /// 向订单信息表添加信息
    /// </summary>
    /// <param name="fltBooksFee">商品总费用</param>
    /// <param name="fltShipFee">运输总费用</param>
    /// <param name="strShipType">运输方式</param>
    /// <param name="strName">接收人姓名</param>
    /// <param name="strPhone">接收人电话</param>
    /// <param name="cPostCode">接收人邮编</param>
    /// <param name="strAddress">接收人详细地址</param>
    /// <param name="strEmail">接收人Email</param>
    /// <returns>返回订单号</returns>
    public int InsertOrder(string receiverName, string receiverPhone, string sendTime, string sendType, string receiverAddress, string users, string totalPrice, string num, string bianma,string beizhu)
    {
        SqlCommand myCmd = dbObj.GetCommandProc("StoredProcedure2");


        //添加参数
        SqlParameter booksFee = new SqlParameter("@receiverName", SqlDbType.VarChar ,50);
        booksFee.Value = receiverName;
        myCmd.Parameters.Add(booksFee);
        //添加参数
        SqlParameter shipFee = new SqlParameter("@receiverPhone", SqlDbType.VarChar, 50);
        shipFee.Value = receiverPhone;
        myCmd.Parameters.Add(shipFee);
        //添加参数
        SqlParameter shipType = new SqlParameter("@sendTime", SqlDbType.VarChar, 50);
        shipType.Value = sendTime;
        myCmd.Parameters.Add(shipType);
        //添加参数
        SqlParameter name = new SqlParameter("@sendType", SqlDbType.VarChar, 50);
        name.Value = sendType;
        myCmd.Parameters.Add(name);
        //添加参数
        SqlParameter address = new SqlParameter("@receiverAddress", SqlDbType.VarChar, 500);
        address.Value = receiverAddress;
        myCmd.Parameters.Add(address);
        //添加参数
        SqlParameter postCode = new SqlParameter("@users", SqlDbType.VarChar, 50);
        postCode.Value = users;
        myCmd.Parameters.Add(postCode);
        //添加参数
        SqlParameter talPrice = new SqlParameter("@totalPrice", SqlDbType.VarChar, 50);
        talPrice.Value = totalPrice;
        myCmd.Parameters.Add(talPrice);
        //添加参数
        SqlParameter email = new SqlParameter("@num", SqlDbType.VarChar, 50);
        email.Value = num;
        myCmd.Parameters.Add(email);
               //添加参数
        SqlParameter bm = new SqlParameter("@bianma", SqlDbType.VarChar, 50);
        bm.Value = bianma;
        myCmd.Parameters.Add(bm);
        //添加参数
        SqlParameter bz = new SqlParameter("@beizhu", SqlDbType.VarChar, 50);
        bz.Value = beizhu;
        myCmd.Parameters.Add(bz);
        //添加参数
        SqlParameter orderID = myCmd.Parameters.Add("@OrderId", SqlDbType.Int, 4);
        orderID.Direction = ParameterDirection.Output;
        dbObj.ExecNonQuery(myCmd);
        return Convert.ToInt32(orderID.Value.ToString());
    }

    //更新操作

    //后台更新商品
    public void updateShop(int id,string typename, string imageurl, string imagename,string price,string type,string introduct)
    {
        data.RunProc("update  tb_Shop set typename='" + typename + "',imageurl='" + imageurl + "',imagename='" + imagename + "',price='" + price + "',type='" + type + "',introduct='" + introduct + "' where id='" + id + "'");

    }
    //后台更新留言
    public void updateWord(int id, string admitReturn,bool isConfirm,DateTime confirmTime)
    {
        data.RunProc("update  tb_LeaveWord set admitReturn='" + admitReturn + "', isConfirm='" + isConfirm + "',confirmTime='"+confirmTime+"' where id='" + id + "'");

    }
    //更新会员地址
    public void updateAddress(int receiverId, string receiverName, string receiverPhone, string receiverAddress, string bianma, string users)
    {
        data.RunProc("update  tb_ReceiverAddress set receiverName='" + receiverName + "',receiverPhone='" + receiverPhone + "',receiverAddress='" + receiverAddress + "',bianma='" + bianma + "',users='" + users + "' where receiverId='" + receiverId + "'");

    }
    //更新会员信息(带密码的)
    public void updateMember(int id, string users, string phone, string realname, string password)
    {
        data.RunProc("update  tb_Member set users='" + users + "',phone='" + phone + "',realname='" + realname + "',password='" + password + "' where id='" + id + "'");

    }
    //更新会员信息(不带密码的)
    public void updateMember(int id, string users, string phone, string realname)
    {
        data.RunProc("update  tb_Member set users='" + users + "',phone='" + phone + "',realname='" + realname + "' where id='" + id + "'");

    }

    //删除操作

    //删除管理员
    public void DeleteInfo(int id)
    {
        int d = data.RunProc("Delete from db_Admit where id='" + id + "'");
    }
    //删除会员地址
    public void DeleteAddress(int id)
    {
        int d = data.RunProc("Delete from tb_ReceiverAddress where receiverId='" + id + "'");
    }


    //登录操作
    public DataSet login(string user, string pwd)
    {
        return data.RunProcReturn("select * from db_Admit where users='" + user + "'and password='" + pwd + "'", "db_Admit");

    }
   //会员登录
    public DataSet memberLogin(string user, string pwd)
    {
        return data.RunProcReturn("select * from tb_Member where users='" + user + "'and password='" + pwd + "'", "tb_Member");

    }

    public DataSet Logon(string users)
    {
        SqlParameter[] pr ={
                              data.MakeInParam("@users",SqlDbType.VarChar,20,users),
                              
                          };
        return data.RunProcReturn("select * from db_Admit where users=@users ", pr, "db_Admit");
    }

}
