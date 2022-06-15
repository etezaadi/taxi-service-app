package taxi.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("taxi");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/remove.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        long carId = Long.parseLong(req.getParameter("car_id"));
        Driver driverById = driverService.get(driverId);
        Car carById = carService.get(carId);
        carService.removeDriverFromCar(driverById, carById);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers/remove");
    }
}
