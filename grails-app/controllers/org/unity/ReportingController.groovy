package org.unity

import org.apache.poi.ss.usermodel.Workbook
import org.springframework.security.access.annotation.Secured
import pl.touk.excel.export.XlsxExporter

@Secured(['ROLE_ADMIN'])
class ReportingController {

    def index() {
        List<Player> players = Player.findAllByTeam(Team.get(5))

        def withProperties = ['firstName', 'lastName', 'team.name', 'subTeam.name', 'sports']
        new XlsxExporter('D:\\Report.xlsx').
                add(players, withProperties).
                save()
    }

    def upload() {
        Workbook workbook;
    }
}
