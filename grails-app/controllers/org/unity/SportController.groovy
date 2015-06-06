package org.unity

import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class SportController {

    static scaffold = true
}
