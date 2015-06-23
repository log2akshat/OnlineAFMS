package net.adminsecurity;
import javax.security.sasl.AuthenticationException;

public interface AdminSecurityService {
	public AdminUser authenticate(String username, String password)
			throws AuthenticationException;
}
