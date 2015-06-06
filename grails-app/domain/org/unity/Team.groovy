package org.unity

class Team {

    String name
    static hasMany = [players: Player]

    String toString() {
        name
    }
    static constraints = {
        name()
    }
}
