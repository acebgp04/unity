package org.unity

class Team {
    transient springSecurityService
    String name
    static hasMany = [players: Player, subTeams:SubTeam]

    String toString() {
        name
    }
    static constraints = {
        name()
    }

}