package com.mypro.serv;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.mypro.dao.Add;
import com.mypro.dto.MenuItem;

/**
 * Servlet implementation class Addmenuitem
 */
@WebServlet(urlPatterns ={"/Addmenuitem"})
@MultipartConfig(maxFileSize = 16177215)
public class Addmenuitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmenuitem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MenuItem dto =new MenuItem();
		PrintWriter pw=response.getWriter();
		dto.setName(request.getParameter("pnm"));
		dto.setDisc(request.getParameter("discp"));
		dto.setCat(request.getParameter("cat"));
		dto.setPrice(Integer.parseInt(request.getParameter("price")));
		Part fp=request.getPart("img");
		if(fp!=null)
		{
			System.out.println(fp.getName());
			System.out.println(fp.getSize());
			System.out.println(fp.getContentType());
			dto.setImg(fp.getInputStream());
		}else
			{System.out.println(fp+" Empty");}
		Add dao=new Add();
		int a=dao.Additem(dto);
		if(a>0)
			pw.println("Data Entered ");
		else
			pw.println("DAta Failed to Enter");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
