package codewiz.compoundinterestcalc;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "calculatorServlet", value = {"","/"})
public class CalculatorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        getServletContext().getRequestDispatcher("/calculator.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String principleAmount = request.getParameter("principleAmount");
        String interestPercentage = request.getParameter("interestPercentage");
        String years = request.getParameter("years");
        String compoundingPeriod = request.getParameter("compoundingPeriod");

        if (principleAmount.equals("")){
            request.setAttribute("error", "Amount field is empty");
        } else if (interestPercentage.equals("")) {
            request.setAttribute("error", "Interest field is empty");
        } else if (years.equals("")) {
            request.setAttribute("error", "Years field is empty");
        } else if (compoundingPeriod.equals("")) {
            request.setAttribute("error", "Period field is empty");
        }else {
            double results = Utils.calculateCompoundInterest(Double.parseDouble(principleAmount),
                    (Double.parseDouble(interestPercentage) / 100),Integer.parseInt(years),
                    Integer.parseInt(compoundingPeriod));
            request.setAttribute("results", results);
        }

        request.setAttribute("principleAmount",principleAmount);
        request.setAttribute("interest",interestPercentage);
        request.setAttribute("years",years);
        request.setAttribute("compoundingPeriod",compoundingPeriod);
        doGet(request,response);

    }
}