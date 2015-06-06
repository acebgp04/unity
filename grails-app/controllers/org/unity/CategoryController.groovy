package org.unity

import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class CategoryController {

    static scaffold = true
}
