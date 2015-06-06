package org.unity

class SubTeam {
    String name
    static belongsTo = [team:Team]
    static hasMany = [players:Player]
    String toString() {
        name
    }
    static constraints = {
    }
}
