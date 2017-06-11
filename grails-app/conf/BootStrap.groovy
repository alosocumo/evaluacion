import ulsaoaxaca.edu.mx.User
import ulsaoaxaca.edu.mx.Role
import ulsaoaxaca.edu.mx.UserRole

class BootStrap {

    def init = { servletContext ->
        User admin = new User(username: 'admin' , password: 'admin', enabled: true).save()
        Role rolAdmin =new Role(authority: 'ROLE_ADMIN').save()
        UserRole.create(admin,rolAdmin,true)

    }
    def destroy = {
    }
}
