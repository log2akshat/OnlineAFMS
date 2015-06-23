package net.security;
import javax.security.sasl.AuthenticationException;

public interface SecurityService {
	public User authenticate(int oid, String password)
			throws AuthenticationException;
}
