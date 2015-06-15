package unitygames

import grails.transaction.Transactional
import org.unity.Player
import org.unity.SubTeam
import org.unity.Team

@Transactional
class AutoCompleteService {

    def complist(params){
        def clist = Player.createCriteria().list{
            or {
                ilike("firstName", "%${params.term}%")
                ilike("lastName", "%${params.term}%")
            }

            and {
                if(params.teamID) eq("team", Team.get(params.teamID))
                if(params.subTeamID) eq("subTeam", SubTeam.get(params.subTeamID))
            }

        } // execute  to the get the list of companies
        println(clist)
        def companySelectList = [] // to add each company details
        clist.each { Player player ->
            def companyMap = [:] // add to map. jQuery autocomplete expects the JSON object to be with id/label/value.
            companyMap.put("id", player.id)
            companyMap.put("label", "${player.firstName}  ${player.lastName}")
            companyMap.put("value", player.firstName)
            companyMap.put("nasSymbol", player.firstName) // will use this to pre-populate the Emp Id
            companySelectList.add(companyMap) // add to the arraylist
        }
        println(companySelectList.size())
        if(companySelectList.size() == 0) {
            def companyMap = [:] // add to map. jQuery autocomplete expects the JSON object to be with id/label/value.
            companyMap.put("id", 0)
            companyMap.put("label", "Player not Found!")
            companyMap.put("value", "Player not Found!")
            companyMap.put("nasSymbol", "Player not Found!") // will use this to pre-populate the Emp Id
            companySelectList.add(companyMap) // add to the arraylist
        }
        return companySelectList
    }
}