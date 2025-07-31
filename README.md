## Inntrykk

### Keto

- Hovedbegreper: Subject -> Relationship -> Object
Virker enkelt og rett frem. Kraftig. Sleit en del med å forstå nøyaktig hvordan jeg skulle gå frem. Synes kanskje ikke
dokumentasjonen var suuuperbra. Liker dog godt designet. Liker også at de gjør en ting ut av "testing your permission
model"
- API ser ålreit ut. SDKer i fleng

### OpenFGA

- Hovedbegreper: Object (user + id) -> Relation -> Object (user + id)
- Kult med playground
  - Inkludert test runner!
  - Visuell representasjon av relasjonene
  - Bruker begreper litt rart. Har dog en god oversikt over hva de mener med begrepene
    - blander "user" og "subject". "subject" heter/er "user" i openfga.
    - objekt er ikke mottaker av relasjonsdefinisjonen; objekt betyr "user" + id, altså "schema:50"
    - gir mening dog; et objekt relaterer til objekt
- Kult med [Concepts](https://openfga.dev/docs/concepts)
- Veldig kult at alt kan skrives i playground, for så å eksportere alt (modeller, relasjoner OG tester) tror dog testene
  må uansett skrives i kode slik at man kan CI'e det, og da er man like langt som keto
- Opplevde at endringer jeg gjorde i playground ikke kom med i `fga store export`. skummelt. fungerte fint å eksportere
  fra playground og importere
- API ser ålreit ut. SDKer i fleng
- lett å eksportere/importere data

### AWS Verified permissions

- Hovedbegreper: principals -> actions -> resources
- cedar virker ok. åpner for mer logikk (og derfor kompleksitet)
- + test bench (men klassisk AWS UX)
- - JSON for schema (terraformresursen støtter ikke cedar schema format)
- modelering av gruppetilhørlighet støttes ikke av cedar, [ref](https://docs.cedarpolicy.com/bestpractices/bp-implementing-roles-groups.html#assigning-a-user-to-a-role)
