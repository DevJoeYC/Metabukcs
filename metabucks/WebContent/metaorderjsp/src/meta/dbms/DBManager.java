package meta.dbms;

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

	//DB를 연결한다.
	//리턴값 : 성공시 true, 실패시 false
	public boolean DBOpen()
	{
		try
		{
			//JDBC 드라이버를 로딩한다.
			Class.forName("com.mysql.cj.jdbc.Driver");
			//데이터베이스에 연결한다.
			conn = DriverManager.getConnection(host,userid,passwd);
			return true;
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	//DB를 닫는다.
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

	//Insert, Update, Delete SQL 구문 처리
	public boolean RunSQL(String sql)
	{
		try
		{
			//작업 처리용 클래스를 할당 받는다.
			Statement stmt = conn.createStatement();
			//SQL 구문을 실행한다.
			stmt.executeUpdate(sql);
			stmt.close();
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	//SQL Select 문장을 실행한다.
	public boolean OpenQuery(String sql)
	{
		try
		{
			//작업 처리용 클래스를 할당 받는다.
			stmt = conn.createStatement();
			//결과를 result로 받는다
			result = stmt.executeQuery(sql);
			return true;
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	//SQL Select 문장을 종료한다.
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

	//다음 결과를 가져온다.
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

	//컬럼 값을 가져온다.
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

	//작은 따옴표를 변환한다.
	public String _R(String value)
	{
		return value.replace("'","''");
	}
}