package mx.edu.utez.controller;

import com.google.gson.Gson;
import mx.edu.utez.model.category.BeanCategory;
import mx.edu.utez.model.games.BeanGames;
import mx.edu.utez.model.games.DaoGames;
import mx.edu.utez.model.user.DaoUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

@MultipartConfig
@WebServlet(name = "ServletGame", urlPatterns ={"","/createGames","/updateGames","deleteGames"})
public class ServletGame extends HttpServlet {
    private Map map = new HashMap();
    final private Logger CONSOLE = LoggerFactory.getLogger(ServletGame.class);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("session") != null){
            //request.setAttribute("listGames", new DaoGames().findAll());
            //request.getRequestDispatcher("views/game/games.jsp").forward(request, response);
            map.put("listGames",new DaoGames().findAll());
            write(response,map);
        } else {
            request.getRequestDispatcher("/").forward(request, response);
        }
        //request.setAttribute("listGames", new DaoGames().findAll());
        //request.getRequestDispatcher("/views/game/games.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF_8");
        String action = request.getParameter("action");
        BeanGames beanGames = new BeanGames();
        DaoGames daoGames = new DaoGames();
        BeanCategory beanCategory = new BeanCategory();
        switch (action){
            case "create":
                Part part=request.getPart("image");
                InputStream image=part.getInputStream();
                beanCategory.setIdCategory(Integer.parseInt(request.getParameter("idCategory")));
                beanGames.setName(request.getParameter("name"));
                beanGames.setDatePremiere(request.getParameter("date"));
                beanGames.setCategory_idCategory(beanCategory);
                boolean flag=daoGames.create(beanGames,image);
                if(flag){

                    map.put("message","Se registro correctamente");
                }else{
                    map.put("message", "No se registro correctamente");
                    CONSOLE.error("");
                }
                break;
            case "update":

                beanGames.setIdGames(Integer.parseInt(request.getParameter("idGame")));
                beanCategory.setIdCategory(Integer.parseInt(request.getParameter("idcategory")));
                beanGames.setName(request.getParameter("name"));
                beanGames.setDatePremiere(request.getParameter("date"));
                beanGames.setCategory_idCategory(beanCategory);
                boolean flag1 = daoGames.update(beanGames);
                if (flag1){
                    map.put("message", "Se ha registrado Correctamente.");

                }else{

                    map.put("message", "No se registro Correctamente.");
                }
                break;
            case "delete":
                if (new DaoGames().delete(Integer.parseInt(request.getParameter("idGame")))){
                    request.setAttribute("message","Se ha eliminado correctamente");
                }
                break;
            default:
                //no supported
                request.getRequestDispatcher("/").forward(request,response);
        }
        response.sendRedirect(request.getContextPath()+"/readGames");
    }
    private void write(HttpServletResponse response, Map<String, Object> map)throws IOException{
        response.setContentType("aplication/json");
        response.getWriter().write(new Gson().toJson(map));
    }
}