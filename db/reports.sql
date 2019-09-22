INSERT INTO reports (weeknumber, title, description)
VALUES (1,
    "För att kunna köra denna react applikation behöver du göra följande:",
    "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
    <div className='line'></div>
    <h3>`npm install`</h3>
    <p>Installerar npm moduler.</p>
    <h3>`npm start</h3>
    <p>Kör applikationen i utvecklingsläge.</p>
    <h3>`npm run build`</h3>
    <p>Bygger appen för produktion till `build` mappen.</p>");

    INSERT INTO reports (weeknumber, title, description)
    VALUES (2,
        "INSPIRATIONER",
        "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
        <div className='line'></div>
        <p>Inspirationen till mitt formulär är nog främst våran lärare Emil. Det är ett väldigt enkelt sätt att
           att göra en formulär validering. Jag kollade även runt på exempel, men dom flesta använder error text
           istället för färger. Och i mitt fall föredrar jag att det kommer fram grön eller röd färg. Men om du trycker
           på 'registrera' knappen och ett fält inte är ifyllt så kommer en popup komma med ett error meddelande. Men
           annars när du skriver i ett fält så kommer rutan bli grön när det är godkänt. Samma sak gäller me datumen.
        </p>
        <p>Inspirationen till min datetime picker har jag inte fått från något speciellt ställe. Jag ville skapa en
           någorlunda enkel 'kalender'. Jag har googlat på lite inspirationer och sett hur andra har gjort, i
           slutändan bestämde jag mig för att ha 3 olika dropdown menyer där man får välja år, månad och dag. Jag
           kom inte på något annat som jag kunde göra utan att använda reacts inbyggda datetime-picker. Men jag tycker
           ändå att det blev bra i slutändan! </p>");

        INSERT INTO reports (weeknumber, title, description)
        VALUES (3,
            "BACKEND OCH FRONTEND: ",
            "text

            <a href='https://github.com/theEmelie/me-react'>GitHub</a>");
