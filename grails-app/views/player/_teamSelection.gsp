<!-- This template renders a drop down after a city is selected -->

<g:select id="subTeam" name="subTeam" from="${subTeams}" optionKey="id"  optionValue="name" noSelection="${[null: 'Select Sub-Team...']}"/>