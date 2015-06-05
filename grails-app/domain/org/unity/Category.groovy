package org.unity

class Category {

    String name
    static belongsTo = [sport: Sport]

    String toString() {
        sport ? sport.name + " : " + name : name
    }
    static constraints = {
    }
}
