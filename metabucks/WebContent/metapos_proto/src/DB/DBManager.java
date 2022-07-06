package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager
{
	private Connection conn = null;
	private String host;
	private String userid;
	private String passwd;

	private Statement stmt;
	private ResultSet result;

	public DBManager()
	{
		host   = "jdbc:mysql://silverwoods.synology.me:3306/CTEAM?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		userid = "CTEAM";
		passwd = "E2en_java_(team";
	}

	public DBManager(String userid, String passwd)
	{
		host		= "jdbc:mysql://silverwoods.synology.me:3306/CTEAM?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		this.userid	= userid;
		this.passwd	= passwd;
	}

	public DBManager(String IP, String database, String userid, String passwd)
	{
		host  = "jdbc:mysql://";
		host += IP += "/"+ database;
		host += "?useUnicode=true&characterEncoding=utf-8";
		host += "&serverTimezone=UTC";
		this.userid = userid;
		this.passwd = passwd;
	}

	//DB�� �����Ѵ�.
	//���ϰ� : ������ true, ���н� false
	public boolean DBOpen()
	{
		try
		{
			//JDBC ����̹��� �ε��Ѵ�.
			Class.forName("com.mysql.cj.jdbc.Driver");
			//�����ͺ��̽��� �����Ѵ�.
			conn = DriverManager.getConnection(host,userid,passwd);
			return true;
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	//DB�� �ݴ´�.
	public void DBClose()
	{
		try
		{
			conn.close();
		} catch (Exception e)
		{
			//e.printStackTrace();
		}
	}

	//Insert, Update, Delete SQL ���� ó��
	public boolean RunSQL(String sql)
	{
		try
		{
			//�۾� ó���� Ŭ������ �Ҵ� �޴´�.
			Statement stmt = conn.createStatement();
			//SQL ������ �����Ѵ�.
			stmt.executeUpdate(sql);
			stmt.close();
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	//SQL Select ������ �����Ѵ�.
	public boolean OpenQuery(String sql)
	{
		try
		{
			//�۾� ó���� Ŭ������ �Ҵ� �޴´�.
			stmt = conn.createStatement();
			//����� result�� �޴´�
			result = stmt.executeQuery(sql);
			return true;
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	//SQL Select ������ �����Ѵ�.
	public void CloseQuery()
	{
		try
		{
			result.close();
			stmt.close();
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

	//���� ����� �����´�.
	public boolean GetNext()
	{
		try
		{
			return result.next();
		} catch (SQLException e)
		{
			e.printStackTrace();
			return false;
		}
	}

	//�÷� ���� �����´�.
	public String GetValue(String column)
	{
		try
		{
			return result.getString(column);
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		}
	}

	//���� ����ǥ�� ��ȯ�Ѵ�.
	public String _R(String value)
	{
		return value.replace("'","''");
	}
}