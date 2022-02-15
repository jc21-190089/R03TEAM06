import java.awt.font.ImageGraphicAttribute;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet("/gazou")

public class gazou extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//final String driverName = "com.mysql.jdbc.Driver";
		//final String url = "jdbc:mysql://192.168.54.194:3306/webapp";
		//final String id = "webapp";
		//final String pass = "webapp";

		try {
			
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup(
					"java:/comp/env/jdbc/webapp");
			Connection connection = ds.getConnection();
			//Class.forName(driverName);
			//Connection connection=DriverManager.getConnection(url,id,pass);

			String comm = request.getParameter("comm1");
			PreparedStatement st =
					connection.prepareStatement(
							"select * from file_table where comm_id=?"
						);

			st.setString(1, comm);
			
						
			ResultSet result = st.executeQuery();
			
						
			result.next();
			
			byte[] file_name = result.getBytes("file_name");
			System.out.println(file_name);
			
			
			
			ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
			byteOut.write(file_name, 0, file_name.length );
			response.setContentType( "image/jpeg" );
			response.setContentLength( byteOut.size() );
			OutputStream out = response.getOutputStream();
			out.write( byteOut.toByteArray() );
			out.close();

			


		}catch (Exception e) {
			e.printStackTrace();
	}
			
	}


}
