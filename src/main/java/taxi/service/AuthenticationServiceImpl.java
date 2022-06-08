package taxi.service;

import java.util.Optional;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger logger = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        logger.info("Login method was called. Login: " + login);
        Optional<Driver> driverLogin = driverDao.findByLogin(login);
        if (driverLogin.isEmpty() || !driverLogin.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password was incorrect!");
        }
        return driverLogin.get();
    }
}
