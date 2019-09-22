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
           annars när du skriver i ett fält så kommer rutan bli grön när det är godkänt. Samma sak gäller me datumen.</p>
        <p>Inspirationen till min datetime picker har jag inte fått från något speciellt ställe. Jag ville skapa en
           någorlunda enkel 'kalender'. Jag har googlat på lite inspirationer och sett hur andra har gjort, i
           slutändan bestämde jag mig för att ha 3 olika dropdown menyer där man får välja år, månad och dag. Jag
           kom inte på något annat som jag kunde göra utan att använda reacts inbyggda datetime-picker. Men jag tycker
           ändå att det blev bra i slutändan! </p>");

        INSERT INTO reports (weeknumber, title, description)
        VALUES (3,
            "BACKEND OCH FRONTEND",
            "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
            <div className='line'></div>
            <p>Denna vecka har vi skapat en server (backend) som vi sedan har kopplat våran frontend till. Det har
            varit ett väldigt stort kursmoment och tagit extremt mycket tid, runt 25 timmar kanske? Och det var bara
            att göra kraven. Men det har samtidigt varit väldigt lärorikt. Jag har lärt mig hur man sätter upp en server och sedan publicera den
            publikt, det gick ändå ganska bra och rakt fram. Jag har lärt mig att det kan ta väldigt lång tid att
            se sin hemsida om man använder sig ut av routerns dns, därav använder jag numera google dns och då ser man
            en ny server/hemsida på direkten. </p>
            <p>Jag fick däremot ett väldigt plötsligt problem, min dator kraschade och helt plötsligt kunde jag inte
            logga in på min server med ssh. Efter ett par timmars sökande lärde jag mig att man kan gå in på digital ocean,
            där servern är och använda sig utav deras terminal för att ändra i sshd_config och där fick jag sätta
            PasswordAuthentication till yes istället. Har inte lyckats klura ut varför ssh nycklarna helt plötsligt inte fungerar.</p>
            <p>Frontend biten gick också hyfsat bra. Det var inga problem att få den publikt på min server, det har varit
            klurigt att koppla frontend och backend, det har kommit felmeddelanden som man inte riktigt har förstått sig på
            och liknande. Det var även svårt att göra en CRU på veckorapportena, men även det gick efter många timmar.</p>
            <p>I slutändan har det varit väldigt svårt att få allt att fungera tillsammans, men det har gått och jag har lärt
            mig otroligt mycket och förhoppningsvis kommer det underlätta i kommande kursmoment och även projektet.</p>");
