package org.unity

class Player {

    String firstName
    String middleName
    String lastName
    String gender
    String emailAddress
    Date birthDate
    String nationality
    String contactNo
    String bloodType
    String languageDialect
    String weight
    String height
    String highestEducAttainment
    String picture

    String nameOfFather
    String fatherContactNo
    String nameOfMother
    String motherContactNo

    String kapisanan
    String purokGrupo
    String lokal
    String district
    Date baptismDate
    String country
    static belongsTo = [team: Team]
    static hasMany = [sports: Category]

    String contactAbroadName
    String contactAbroadRel
    String contactAbroademailAddress
    String contactAbroadPhone
    String contactLocalName
    String contactLocalRel
    String contactLocalemailAddress
    String contactLocalPhone

    String guardian
    String guardianRel
    String guardianContactNo
    String waiver

    //Transportation

    String arrivalAirline
    Date arrivalDate
    String arrivalAirport
    String arrivalFlightNo
    String arrivalBusCompany
    String arrivalBusNo

    String departureAirline
    Date departureDate
    String departureAirport
    String departureFlightNo
    String departureBusCompany
    String departureBusNo


    //Accomodation
    String hotel
    String hotelPhoneNo
    String hotelAddress
    String hotelRoomNo


    static constraints = {
        firstName(nullable: false)
        middleName(nullable: false)
        lastName(nullable: false)
        gender(nullable: false)
        emailAddress(nullable: false)
        birthDate(nullable: false)
        nationality(nullable: false)
        contactNo(nullable: false)
        bloodType(nullable: false)
        languageDialect(nullable: false)
        weight(nullable: false)
        height(nullable: false)
        highestEducAttainment(nullable: false)
        picture(blank: true, nullable: true)

        nameOfFather(nullable: false)
        fatherContactNo(nullable: false)
        nameOfMother(nullable: false)
        motherContactNo(nullable: false)

        kapisanan(nullable: false)
        purokGrupo(nullable: false)
        lokal(nullable: false)
        district(nullable: false)
        baptismDate(nullable: false)
        country(nullable: false)
        team(nullable: false)
        sports(nullable: false)

        contactAbroadName(nullable: false)
        contactAbroadRel(nullable: false)
        contactAbroademailAddress(nullable: false)
        contactAbroadPhone(nullable: false)
        contactLocalName(nullable: false)
        contactLocalRel(nullable: false)
        contactLocalemailAddress(nullable: false)
        contactLocalPhone(nullable: false)

        guardian(nullable: false)
        guardianRel(nullable: false)
        guardianContactNo(nullable: false)
        waiver(nullable: false)

        arrivalAirline(nullable: false)
        arrivalDate(nullable: false)
        arrivalAirport(nullable: false)
        arrivalFlightNo(nullable: false)
        arrivalBusCompany(nullable: false)
        arrivalBusNo(nullable: false)

        departureAirline(nullable: false)
        departureDate(nullable: false)
        departureAirport(nullable: false)
        departureFlightNo(nullable: false)
        departureBusCompany(nullable: false)
        departureBusNo(nullable: false)

        hotel(nullable: false)
        hotelPhoneNo(nullable: false)
        hotelAddress(nullable: false)
        hotelRoomNo(nullable: false)
    }
}
