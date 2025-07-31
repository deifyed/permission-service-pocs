## Inntrykk

### Keto

Virker enkelt og rett frem. Kraftig. Sleit en del med å forstå nøyaktig hvordan jeg skulle gå frem. Synes kanskje ikke
dokumentasjonen var suuuperbra. Liker dog godt designet. Liker også at det gjør en ting ut av "testing your permission
model"
- API ser ålreit ut. SDKer i fleng

### OpenFGA

- Kult med playground
  - Inkludert test runner!
  - Visuell representasjon av relasjonene
  - Bruker begreper litt rart. Har dog en god oversikt over hva de mener med begrepene
    - blander "user" og "subject". "subject" heter/er "user" i openfga.
    - objekt er ikke mottaker av relasjonsdefinisjonen; objekt betyr "user" + id, altså "schema:50"
- Kult med [Concepts](https://openfga.dev/docs/concepts)
- Veldig kult at alt kan skrives i playground, for så å eksportere alt (modeller, relasjoner OG tester) tror dog testene
  må uansett skrives i kode slik at man kan CI'e det, og da er man like langt som keto
- Opplevde at endringer jeg gjorde i playground ikke kom med i `fga store export`. skummelt. fungerte fint å eksportere
  fra playground og importere
- API ser ålreit ut. SDKer i fleng
- lett å eksportere/importere data
