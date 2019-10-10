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

        INSERT INTO reports (weeknumber, title, description)
        VALUES (4,
            "Use-case tester med Selenium",
            "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
            <div className='line'></div>
            <p>Use-case 1: Användaren ska från förstasidan kunna trycka på en länk för komma tillbaka till förstasidan.</p>
            <p>Use-case 2: Användaren ska från redovisningssidan kunna ta sig till registreringsformuläret.</p>
            <p>Use-case 3: Användaren ska från registreringsformuläret kunna ta sig till login sidan.</p>");

        INSERT INTO reports (weeknumber, title, description)
        VALUES (5,
            "Realtid",
            "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
            <div className='line'></div>
            <p>Den här veckan har vi skapat en realtid chatt till våran hemsida. Det har både varit svårt och enkelt. Efter
            att ha kollat på guiden och en del exempel på internet har jag fått en grundläggande förståelse för att bygga
            min egna chatt. Och jag har lärt mig att det är verkligen inte så svårt som man tror, på mindre än 100 rader i
            frontend och runt 50 rader i backend har jag lyckats skapa en fullt fungerade chatt. Det finns såklart mycket
            mer man skulle kunna lägga till för att få det ännu bättre. Ifrån början hade jag tänkt att lägga backend biten
            i mitt me-api men när jag skulle driftsätta den så slutade allt fungera. Och i slutändan bestämmde jag mig för att
            skapa ett seperat api för chatten och det fungerade som det skulle. Det har varit ett roligt kursmoment och väldigt
            användbart inför framtiden att förstå sockets.</p>");

        INSERT INTO reports (weeknumber, title, description)
        VALUES (6,
            "NoSQL",
            "<h3><a href='https://github.com/theEmelie/me-react' className='github'>GitHub Repo</a></h3>
            <div className='line'></div>
            <p>Den här veckan har vi lagt till mongoDB till våran hemsida och med hjälp utav det har vi
            gjort en chatt historik. Jag har lagt till en knapp på min chatt sida, trycker man på den så får man upp
            alla gammla meddelanden. Det har varit ett väldigt litet och snabbt kursmoment, tog inte många timmar att
            slutföra, det finns många bra exempel på internet som har hjälpt mig att förstå vad jag ska göra, och vad
            det faktiskt gör. Det har ändå varit roligt, jag trodde att det skulle vara svårt, det låter som om det
            borde vara det, men det är verkligen tvärtemot!</p>");
