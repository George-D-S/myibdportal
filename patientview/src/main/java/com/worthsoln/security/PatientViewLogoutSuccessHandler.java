package com.worthsoln.security;

import com.worthsoln.patientview.logging.AddLog;
import com.worthsoln.patientview.model.Tenancy;
import com.worthsoln.patientview.model.User;
import com.worthsoln.security.model.SecurityUser;
import com.worthsoln.service.UserManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PatientViewLogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler {

    @Inject
    private UserManager userManager;

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {

        /**
         * Retrieve the user from the session
         */
        SecurityUser securityUser = (SecurityUser) authentication.getPrincipal();
        User user = userManager.get(securityUser.getUsername());
        Tenancy tenancy = securityUser.getTenancy();

        /**
         * Retrieve user information
         */
        String username = user.getUsername();
        String unitCode = userManager.getUsersRealUnitcodeBestGuess(username, tenancy);
        String nhsno = userManager.getUsersRealNhsNoBestGuess(username, tenancy);

        /**
         * Log this logout
         */
        AddLog.addLog(username, AddLog.LOGGED_OUT, username, nhsno, unitCode, "");

        super.onLogoutSuccess(request, response, authentication);
    }
}
