<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Impressum.aspx.cs" Inherits="CARS.Website.Impressum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../banner.css" />
    <link rel="stylesheet" type="text/css" href="../hauptmenu.css" />
    <link rel="stylesheet" type="text/css" href="../button.css" />
    <link rel="stylesheet" type="text/css" href="../mitfahrten.css" />

    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
          <div class="header">

                    <img src="../image/logo.png" />
                    <asp:Button ID="Username_Label" runat="server" Text="Username" OnClick="Username_Label_Click"/>

                    <div class="inner_header">
                        <div class="name_container">
                            <h1>Impressum</h1>


                        </div>
                    </div>

                    <div class="navigation">
                        <a href="Hauptmenü">
                            Zurück
                        </a>
                        <a href="Chat">
                            Chat
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <Triggers>
                            <asp:AsyncPostBackTrigger  ControlID="MARKER_UPDATE" EventName="Tick" />
                            </Triggers>    <ContentTemplate> 
                            <asp:Image ID="CHAT_MARKER" runat="server" src="../image/baseline_notification_important_black_18dp.png" Visible="true"/>    

                            </ContentTemplate> 
                            </asp:UpdatePanel>


<!--<asp:Timer ID="MARKER_UPDATE" runat="server" Interval="5000" OnTick="MARKER_UPDATE_Tick"></asp:Timer>-->
                        </a>
                    </div>
                </div>
            
                    <asp:Panel ID="Impressum_Panel" runat="server" Visible="True">
                       
<p>
    <strong>Impressum</strong>
</p>
<p>
    Angaben gemäß §5 TMG
</p>
<p>
    Maurice Baumgart
    <br/>
    Schmiedestraße 3
    <br/>
    38531 Rötgesbüttel
</p>
<p>
    <strong>Kontakt</strong>
    <br/>
    E-Mail: <a href="mailto:IGShuttle@web.de">IGShuttle@web.de</a>
</p>
<p>
    <strong>Disclaimer – rechtliche Hinweise</strong>
</p>
<p>
    § 1 Warnhinweis zu Inhalten
    <br/>
    Die kostenlosen und frei zugänglichen Inhalte dieser Webseite wurden mit
    größtmöglicher Sorgfalt erstellt. Der Anbieter dieser Webseite übernimmt
    jedoch keine Gewähr für die Richtigkeit und Aktualität der bereitgestellten
    kostenlosen und frei zugänglichen journalistischen Ratgeber und
    Nachrichten. Namentlich gekennzeichnete Beiträge geben die Meinung des
    jeweiligen Autors und nicht immer die Meinung des Anbieters wieder. Allein
    durch den Aufruf der kostenlosen und frei zugänglichen Inhalte kommt
    keinerlei Vertragsverhältnis zwischen dem Nutzer und dem Anbieter zustande,
    insoweit fehlt es am Rechtsbindungswillen des Anbieters.
    <br/>
    <br/>
    § 2 Externe Links
    <br/>
    Diese Website enthält Verknüpfungen zu Websites Dritter ("externe Links").
    Diese Websites unterliegen der Haftung der jeweiligen Betreiber. Der
    Anbieter hat bei der erstmaligen Verknüpfung der externen Links die fremden
    Inhalte daraufhin überprüft, ob etwaige Rechtsverstöße bestehen. Zu dem
    Zeitpunkt waren keine Rechtsverstöße ersichtlich. Der Anbieter hat
    keinerlei Einfluss auf die aktuelle und zukünftige Gestaltung und auf die
    Inhalte der verknüpften Seiten. Das Setzen von externen Links bedeutet
    nicht, dass sich der Anbieter die hinter dem Verweis oder Link liegenden
    Inhalte zu Eigen macht. Eine ständige Kontrolle der externen Links ist für
    den Anbieter ohne konkrete Hinweise auf Rechtsverstöße nicht zumutbar. Bei
    Kenntnis von Rechtsverstößen werden jedoch derartige externe Links
    unverzüglich gelöscht.
    <br/>
    <br/>
    § 3 Urheber- und Leistungsschutzrechte
    <br/>
    Die auf dieser Website veröffentlichten Inhalte unterliegen dem deutschen
    Urheber- und Leistungsschutzrecht. Jede vom deutschen Urheber- und
    Leistungsschutzrecht nicht zugelassene Verwertung bedarf der vorherigen
    schriftlichen Zustimmung des Anbieters oder jeweiligen Rechteinhabers. Dies
    gilt insbesondere für Vervielfältigung, Bearbeitung, Übersetzung,
    Einspeicherung, Verarbeitung bzw. Wiedergabe von Inhalten in Datenbanken
    oder anderen elektronischen Medien und Systemen. Inhalte und Rechte Dritter
    sind dabei als solche gekennzeichnet. Die unerlaubte Vervielfältigung oder
    Weitergabe einzelner Inhalte oder kompletter Seiten ist nicht gestattet und
    strafbar. Lediglich die Herstellung von Kopien und Downloads für den
    persönlichen, privaten und nicht kommerziellen Gebrauch ist erlaubt.
    <br/>
    <br/>
    Die Darstellung dieser Website in fremden Frames ist nur mit schriftlicher
    Erlaubnis zulässig.
    <br/>
    <br/>
    § 4 Besondere Nutzungsbedingungen
    <br/>
    Soweit besondere Bedingungen für einzelne Nutzungen dieser Website von den
    vorgenannten Paragraphen abweichen, wird an entsprechender Stelle
    ausdrücklich darauf hingewiesen. In diesem Falle gelten im jeweiligen
    Einzelfall die besonderen Nutzungsbedingungen.
</p>
<p>
    <strong>Allgemeine Geschäftsbedingungen</strong>
</p>
<p>
    <strong>§ 1 Geltungsbereich</strong>
</p>
<p>
    a) Die nachfolgenden Bedingungen des Auftragnehmers gelten für alle
    zwischen dem Auftragnehmer und dem Auftraggeber abgeschlossenen Verträge,
    insbesondere über die Vermietung von Geräten, sowie den Verkauf und die
    Lieferung von Waren und für Dienst- und Werkleistungen. Die besonderen
    Regelungen dieser Bedingungen für bestimmte Vertragstypen finden bei dem
    Abschluss eines entsprechenden Vertrages zwischen dem Auftraggeber und dem
    Auftragnehmer zusätzlich zu den allgemeinen Regelungen Anwendung.
</p>
<p>
    b) Mit der Erteilung des Auftrags erklärt sich der Auftraggeber mit diesen
    Bedingungen einverstanden.
</p>
<p>
    c) Entgegenstehende oder von diesen AGB abweichende Bedingungen des
    Auftraggebers erkennt der Auftragnehmer nicht an, es sei denn, er hätte
    ausdrücklich schriftlich ihrer Geltung zugestimmt.
</p>
<p>
    d) Diese Bedingungen gelten sowohl gegenüber Verbrauchern als auch
    gegenüber Unternehmern, es sei denn, in der jeweiligen Klausel wird eine
    Differenzierung vorgenommen.
</p>
<p>
    <strong>§ 2 Angebot und Vertragsschluss</strong>
</p>
<p>
    a) Ein Vertrag kommt dadurch zustande, dass der Auftraggeber die
    Auftragsbestätigung unterzeichnet. Lediglich schriftliche Angebote des
    Auftragnehmers sind bindend, telefonische oder Angebote per email sind
    nicht bindend.
</p>
<p>
    b) Abbildungen, Zeichnungen, sowie andere Unterlagen, die zu den
    unverbindlichen Angeboten des Auftragnehmers gehören bleiben im Eigentum
    des Auftragnehmers und sind nur annährend maßgebend, soweit sie nicht von
    ihm ausdrücklich als verbindlich bezeichnet worden sind.
</p>
<p>
    <strong>§ 3 Zahlungsbedingungen</strong>
</p>
<p>
    a) Der zu zahlende Betrag ist innerhalb von netto 7 Tagen nach Auftrags-
    oder Rechnungsabschluss zur Zahlung fällig, soweit sich aus der
    Auftragsbestätigung kein anderes Zahlungsziel ergibt. Die
    Zahlungsverpflichtung ist durch Überweisung auf das angegebene Konto des
    Auftragnehmers oder durch Barzahlung zu erfüllen.
</p>
<p>
    b) Der Auftraggeber ist zur Aufrechnung, auch wenn Mängelrügen oder
    Gegenansprüche geltend gemacht werden nur berechtigt, wenn die
    Gegenansprüche rechtskräftig festgestellt, von dem Auftragnehmer anerkannt
    wurden oder unstreitig sind. Zur Ausübung eines Zurückbehaltungsrechts ist
    der Auftraggeber nur befugt, wenn sein Gegenanspruch auf dem gleichen
    Vertragsverhältnis beruht.
</p>
<p>
    <strong>§ 4 Leistungsumfang des Auftragnehmers</strong>
</p>
<p>
    a) Der Umfang der vom Auftragnehmer in den einzelnen geschuldeten
    Leistungen <a name="_GoBack"></a>ergibt sich aus dem jeweiligen Angebot,
    der Auftragsbestätigung und diesen Vertragsbedingungen.
</p>
<p>
    <strong>§ 5 Pflichten des Auftraggebers</strong>
</p>
<p>
    a) Der Auftraggeber erbringt als wesentliche Vertragspflicht vereinbarte
    und sonstige Mitwirkungsleistungen, sowie Bereitstellungen in dem
    erforderlichen Umfang bzw. der benötigten Qualität und zu den vereinbarten
    Terminen und stellt dem Auftragnehmer die benötigten Arbeitsbedingungen zur
    Verfügung.
</p>
<p>
    b) Kommt der Auftraggeber seinen Mitwirkungspflichten nicht oder nur
    unzureichend nach und verzögert sich infolgedessen die Erbringung von
    Leistungen durch den Auftragnehmer, so ist dieser dafür nicht
    verantwortlich.
</p>
<p>
    c) Wird ein Gegenstand beim Auftraggeber gepfändet oder beschlagnahmt, so
    hat der Auftraggeber dies dem Auftragnehmer unverzüglich schriftlich
    anzuzeigen. Ebenfalls ist der Auftraggeber verpflichtet, den Dritten vom
    Eigentum des Auftragnehmers in Kenntnis zu setzen.
</p>
<p>
    <strong>§ 6 Haftung</strong>
</p>
<p>
    a) Der Auftragnehmer haftet uneingeschränkt nach den gesetzlichen
    Bestimmungen für Schäden an Leben, Körper und Gesundheit, die auf einer
    fahrlässigen oder vorsätzlichen Pflichtverletzung von dem Auftragnehmer,
    seinen gesetzlichen Vertretern oder seinen Erfüllungsgehilfen beruhen,
    sowie für Schäden, die von der Haftung nach dem Produkthaftungsgesetz
    umfasst werden, sowie für Schäden, die auf vorsätzlichen oder grob
    fahrlässigen Vertragsverletzungen sowie Arglist des Auftragnehmers, seiner
    gesetzlichen Vertreter oder Erfüllungsgehilfen beruhen. Soweit der
    Auftragnehmer bezüglich der Ware oder Teile derselben eine Beschaffenheits-
    und/oder Haltbarkeitsgarantie abgegeben hat, haftet er auch im Rahmen
    dieser Garantie. Für Schäden, die auf dem Fehlen der garantierten
    Beschaffenheit oder Haltbarkeit beruhen, aber nicht unmittelbar an der Ware
    eintreten, haftet der Auftragnehmer allerdings nur dann, wenn das Risiko
    eines solchen Schadens ersichtlich von der Beschaffenheits- und
    Halbarkeitsgarantie erfasst ist.
</p>
<p>
    b) Der Auftragnehmer haftet auch für Schäden, die durch einfache
    Fahrlässigkeit verursacht werden, soweit diese Fahrlässigkeit die
    Verletzung solcher Vertragspflichten betrifft, deren Einhaltung für die
    Erreichung des Vertragszweckes von besonderer Bedeutung ist. Das Gleiche
    gilt, wenn dem Auftraggeber Ansprüche auf Schadensersatz statt der Leistung
    zustehen. Er haftet jedoch nur, soweit die Schäden typischerweise mit dem
    Vertrag verbunden und vorhersehbar sind.
</p>
<p>
    c) Eine weitergehende Haftung des Auftragnehmers bei Verkauf einer Sache
    ist ohne Rücksicht auf die Rechtsnatur des geltend gemachten Anspruchs
    ausgeschlossen; dies gilt insbesondere auch für deliktische Ansprüche oder
    Ansprüche auf Ersatz vergeblicher Aufwendungen statt der Leistung. Soweit
    die Haftung des Auftragnehmers ausgeschlossen oder beschränkt ist, gilt
    dies auch für die persönliche Haftung seiner Angestellten, Arbeitnehmer,
    Mitarbeiter, Vertreter oder Erfüllungsgehilfen.
</p>
<p>
    <strong>§ 7 Form von Erklärungen</strong>
</p>
<p>
    Rechtserhebliche Erklärungen und Anzeigen, die der Auftraggeber gegenüber
    dem Auftragnehmer oder einem Dritten abzugeben hat, bedürfen der
    Schriftform.
</p>
<p>
    <strong>§ 8 Geheimhaltung</strong>
</p>
<p>
    a) Die Vertragspartner verpflichten sich zur vertraulichen Behandlung aller
    als vertraulich bezeichneten oder sich aus den Umständen als vertraulich zu
    behandelnd ergebenden Informationen und Unterlagen des jeweils anderen
    Vertragspartners, sowie deren Betriebs- und Geschäftsgeheimnisse.
</p>
<p>
    b) Nicht von der Geheimhaltung umfasst sind Informationen und Unterlagen,
    die im Zeitpunkt der Offenlegung allgemein bekannt und zugänglich oder dem
    empfangenden Vertragspartner zum Zeitpunkt der Offenlegung bereits bekannt
    waren oder ihm von Dritten berechtigterweise zugänglich gemacht worden
    sind.
</p>
<p>
    <strong>§ 9 Sonstiges </strong>
</p>
<p>
    a) Diese Bestimmungen bleiben auch bei Unwirksamkeit einzelner oder
    mehrerer Bestimmungen in ihren übrigen Teilen verbindlich. Unwirksame
    Bestimmungen sind durch Regelungen zu ersetzen, die dem Sinn und Zweck der
    unwirksamen Regelung in rechtswirksamer Weise am nächsten Kommen.
</p>
<p>
    b) Die Beziehungen zwischen den Vertragsparteien regeln sich ausschließlich
    nach dem in der Bundesrepublik Deutschland geltendem Recht. Die Anwendung
    des einheitlichen Gesetzes über den internationalen Kauf beweglicher Sachen
    sowie des Gesetzes über den Abschluss von internationalen Kaufverträgen
    über bewegliche Sachen ist ausgeschlossen.
</p>
<p>
    c) Ausschließlicher Gerichtsstand für Lieferungen und Zahlungen sowie
    sämtliche sich zwischen dem Auftragnehmer und dem Auftraggeber ergebenden
    Streitigkeiten aus den zwischen den Parteien abgeschlossenen Verträgen ist
    der Firmensitz des Auftragnehmers, soweit der Auftraggeber Kaufmann,
    juristische Person des öffentlichen Rechts oder ein öffentlich-rechtliches
    Sondervermögen ist.
</p>
<table cellspacing="0" cellpadding="0" border="0">
    <tbody>
        <tr>
            <td valign="top">
                <br/>
            </td>
        </tr>
    </tbody>
</table>
<h1>
    Datenschutzerklärung
</h1>
<h2>
    Einleitung
</h2>
<p>
    Mit der folgenden Datenschutzerklärung möchten wir Sie darüber aufklären,
    welche Arten Ihrer personenbezogenen Daten (nachfolgend auch kurz als
    "Daten“ bezeichnet) wir zu welchen Zwecken und in welchem Umfang
    verarbeiten. Die Datenschutzerklärung gilt für alle von uns durchgeführten
    Verarbeitungen personenbezogener Daten, sowohl im Rahmen der Erbringung
    unserer Leistungen als auch insbesondere auf unseren Webseiten, in mobilen
    Applikationen sowie innerhalb externer Onlinepräsenzen, wie z.B. unserer
    Social-Media-Profile (nachfolgend zusammenfassend bezeichnet als
    "Onlineangebot“).
</p>
<p>
    Stand: 27. August 2019
</p>
<h2>
    Inhaltsübersicht
</h2>
<ul type="disc">
    <li>
        <a href="#m14">Einleitung</a>
    </li>
    <li>
        <a href="#m3">Verantwortlicher</a>
    </li>
    <li>
        <a href="#mOverview">Übersicht der Verarbeitungen</a>
    </li>
    <li>
        <a href="#m13">Maßgebliche Rechtsgrundlagen</a>
    </li>
    <li>
        <a href="#m27">Sicherheitsmaßnahmen</a>
    </li>
    <li>
        <a href="#m25">
            Übermittlung und Offenbarung von personenbezogenen Daten
        </a>
    </li>
    <li>
        <a href="#m24">Datenverarbeitung in Drittländern</a>
    </li>
    <li>
        <a href="#m134">Einsatz von Cookies</a>
    </li>
    <li>
        <a href="#m182">Kontaktaufnahme</a>
    </li>
    <li>
        <a href="#m391">Kommunikation via Messenger</a>
    </li>
    <li>
        <a href="#m225">Bereitstellung des Onlineangebotes und Webhosting</a>
    </li>
    <li>
        <a href="#m328">Plugins und eingebettete Funktionen sowie Inhalte</a>
    </li>
    <li>
        <a href="#m12">Löschung von Daten</a>
    </li>
    <li>
        <a href="#m15">Änderung und Aktualisierung der Datenschutzerklärung</a>
    </li>
    <li>
        <a href="#m10">Rechte der betroffenen Personen</a>
    </li>
    <li>
        <a href="#m42">Begriffsdefinitionen</a>
    </li>
</ul>
<h2>
    Verantwortlicher
</h2>
<p>
    Maurice Aaron Baumgart/ CarS
    <br/>
    Schmiedestraße 3
    <br/>
    38531 Rötgesbüttel, Deutschland
</p>
<p>
    <strong>Vertretungsberechtigte Personen</strong>
    : Tobias Kurt Georg Winkler
</p>
<p>
    <strong>E-Mail-Adresse</strong>
    : IGShuttle@web.de
</p>
<h2>
    Übersicht der Verarbeitungen
</h2>
<p>
    Die nachfolgende Übersicht fasst die Arten der verarbeiteten Daten und die
    Zwecke ihrer Verarbeitung zusammen und verweist auf die betroffenen
    Personen.
</p>
<h3>
    Arten der verarbeiteten Daten
</h3>
<ul>
    <li>
        Bestandsdaten (z.B. Namen, Adressen).
    </li>
</ul>
<p>
    · Inhaltsdaten (z.B. Texteingaben, Fotografien, Videos).
</p>
<ul>
    <li>
        Kontaktdaten (z.B. E-Mail, Telefonnummern).
    </li>
</ul>
<p>
    · Meta-/Kommunikationsdaten (z.B. Geräte-Informationen, IP-Adressen).
</p>
<p>
    · Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten,
    Zugriffszeiten).
</p>
<h3>
    Kategorien betroffener Personen
</h3>
<ul>
    <li>
        Kommunikationspartner.
    </li>
</ul>
<p>
    · Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten).
</p>
<h3>
    Zwecke der Verarbeitung
</h3>
<p>
    · Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit.
</p>
<p>
    · Direktmarketing (z.B. per E-Mail oder postalisch).
</p>
<ul>
    <li>
        Kontaktanfragen und Kommunikation.
    </li>
</ul>
<h3>
    Maßgebliche Rechtsgrundlagen
</h3>
<p>
    Im Folgenden teilen wir die Rechtsgrundlagen der Datenschutzgrundverordnung
    (DSGVO), auf deren Basis wir die personenbezogenen Daten verarbeiten, mit.
    Bitte beachten Sie, dass zusätzlich zu den Regelungen der DSGVO die
    nationalen Datenschutzvorgaben in Ihrem bzw. unserem Wohn- und Sitzland
    gelten können.
</p>
<ul>
    <li>
        <strong>Einwilligung (Art. 6 Abs. 1 S. 1 lit. a DSGVO)</strong>
        - Die betroffene Person hat ihre Einwilligung in die Verarbeitung der
        sie betreffenden personenbezogenen Daten für einen spezifischen Zweck
        oder mehrere bestimmte Zwecke gegeben.
    </li>
    <li>
        <strong>
            Vertragserfüllung und vorvertragliche Anfragen (Art. 6 Abs. 1 S. 1
            lit. b. DSGVO)
        </strong>
        - Die Verarbeitung ist für die Erfüllung eines Vertrags, dessen
        Vertragspartei die betroffene Person ist, oder zur Durchführung
        vorvertraglicher Maßnahmen erforderlich, die auf Anfrage der
        betroffenen Person erfolgen.
    </li>
    <li>
        <strong>
            Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f. DSGVO)
        </strong>
        - Die Verarbeitung ist zur Wahrung der berechtigten Interessen des
        Verantwortlichen oder eines Dritten erforderlich, sofern nicht die
        Interessen oder Grundrechte und Grundfreiheiten der betroffenen Person,
        die den Schutz personenbezogener Daten erfordern, überwiegen.
    </li>
    <li>
        <strong>
            Art. 9 Abs. 1 S. 1 lit. b DSGVO (Bewerbungsverfahren als
            vorvertragliches bzw. vertragliches Verhältnis) (Soweit im Rahmen
            des Bewerbungsverfahrens besondere Kategorien von personenbezogenen
            Daten im Sinne des Art. 9 Abs. 1 DSGVO (z.B. Gesundheitsdaten, wie
            Schwerbehinderteneigenschaft oder ethnische Herkunft) bei Bewerbern
            angefragt werden, damit der Verantwortliche oder die betroffene
            Person die ihm bzw. ihr aus dem Arbeitsrecht und dem Recht der
            sozialen Sicherheit und des Sozialschutzes erwachsenden Rechte
            ausüben und seinen bzw. ihren diesbezüglichen Pflichten nachkommen
            kann, erfolgt deren Verarbeitung nach Art. 9 Abs. 2 lit. b. DSGVO,
            im Fall des Schutzes lebenswichtiger Interessen der Bewerber oder
            anderer Personen gem. Art. 9 Abs. 2 lit. c. DSGVO oder für Zwecke
            der Gesundheitsvorsorge oder der Arbeitsmedizin, für die
            Beurteilung der Arbeitsfähigkeit des Beschäftigten, für die
            medizinische Diagnostik, die Versorgung oder Behandlung im
            Gesundheits- oder Sozialbereich oder für die Verwaltung von
            Systemen und Diensten im Gesundheits- oder Sozialbereich gem. Art.
            9 Abs. 2 lit. h. DSGVO. Im Fall einer auf freiwilliger Einwilligung
            beruhenden Mitteilung von besonderen Kategorien von Daten, erfolgt
            deren Verarbeitung auf Grundlage von Art. 9 Abs. 2 lit. a. DSGVO.)
        </strong>
        - .
    </li>
</ul>
<p>
    <strong>Nationale Datenschutzregelungen in Deutschland</strong>
    : Zusätzlich zu den Datenschutzregelungen der Datenschutz-Grundverordnung
    gelten nationale Regelungen zum Datenschutz in Deutschland. Hierzu gehört
    insbesondere das Gesetz zum Schutz vor Missbrauch personenbezogener Daten
    bei der Datenverarbeitung (Bundesdatenschutzgesetz – BDSG). Das BDSG
    enthält insbesondere Spezialregelungen zum Recht auf Auskunft, zum Recht
    auf Löschung, zum Widerspruchsrecht, zur Verarbeitung besonderer Kategorien
    personenbezogener Daten, zur Verarbeitung für andere Zwecke und zur
    Übermittlung sowie automatisierten Entscheidungsfindung im Einzelfall
    einschließlich Profiling. Des Weiteren regelt es die Datenverarbeitung für
    Zwecke des Beschäftigungsverhältnisses (§ 26 BDSG), insbesondere im
    Hinblick auf die Begründung, Durchführung oder Beendigung von
    Beschäftigungsverhältnissen sowie die Einwilligung von Beschäftigten.
    Ferner können Landesdatenschutzgesetze der einzelnen Bundesländer zur
    Anwendung gelangen.
</p>
<h2>
    Sicherheitsmaßnahmen
</h2>
<p>
    Wir treffen nach Maßgabe der gesetzlichen Vorgaben unter Berücksichtigung
    des Stands der Technik, der Implementierungskosten und der Art, des
    Umfangs, der Umstände und der Zwecke der Verarbeitung sowie der
    unterschiedlichen Eintrittswahrscheinlichkeiten und des Ausmaßes der
    Bedrohung der Rechte und Freiheiten natürlicher Personen geeignete
    technische und organisatorische Maßnahmen, um ein dem Risiko angemessenes
    Schutzniveau zu gewährleisten.
</p>
<p>
    Zu den Maßnahmen gehören insbesondere die Sicherung der Vertraulichkeit,
    Integrität und Verfügbarkeit von Daten durch Kontrolle des physischen und
    elektronischen Zugangs zu den Daten als auch des sie betreffenden Zugriffs,
    der Eingabe, der Weitergabe, der Sicherung der Verfügbarkeit und ihrer
    Trennung. Des Weiteren haben wir Verfahren eingerichtet, die eine
    Wahrnehmung von Betroffenenrechten, die Löschung von Daten und Reaktionen
    auf die Gefährdung der Daten gewährleisten. Ferner berücksichtigen wir den
    Schutz personenbezogener Daten bereits bei der Entwicklung bzw. Auswahl von
    Hardware, Software sowie Verfahren entsprechend dem Prinzip des
    Datenschutzes, durch Technikgestaltung und durch datenschutzfreundliche
    Voreinstellungen.
</p>
<h2>
    Übermittlung und Offenbarung von personenbezogenen Daten
</h2>
<p>
    Im Rahmen unserer Verarbeitung von personenbezogenen Daten kommt es vor,
    dass die Daten an andere Stellen, Unternehmen, rechtlich selbstständige
    Organisationseinheiten oder Personen übermittelt oder sie ihnen gegenüber
    offengelegt werden. Zu den Empfängern dieser Daten können z.B.
    Zahlungsinstitute im Rahmen von Zahlungsvorgängen, mit IT-Aufgaben
    beauftragte Dienstleister oder Anbieter von Diensten und Inhalten, die in
    eine Webseite eingebunden werden, gehören. In solchen Fall beachten wir die
    gesetzlichen Vorgaben und schließen insbesondere entsprechende Verträge
    bzw. Vereinbarungen, die dem Schutz Ihrer Daten dienen, mit den Empfängern
    Ihrer Daten ab.
</p>
<h2>
    Datenverarbeitung in Drittländern
</h2>
<p>
    Sofern wir Daten in einem Drittland (d.h., außerhalb der Europäischen Union
    (EU), des Europäischen Wirtschaftsraums (EWR)) verarbeiten oder die
    Verarbeitung im Rahmen der Inanspruchnahme von Diensten Dritter oder der
    Offenlegung bzw. Übermittlung von Daten an andere Personen, Stellen oder
    Unternehmen stattfindet, erfolgt dies nur im Einklang mit den gesetzlichen
    Vorgaben.
</p>
<p>
    Vorbehaltlich ausdrücklicher Einwilligung oder vertraglich oder gesetzlich
    erforderlicher Übermittlung verarbeiten oder lassen wir die Daten nur in
    Drittländern mit einem anerkannten Datenschutzniveau, zu denen die unter
    dem "Privacy-Shield" zertifizierten US-Verarbeiter gehören, oder auf
    Grundlage besonderer Garantien, wie z.B. vertraglicher Verpflichtung durch
    sogenannte Standardschutzklauseln der EU-Kommission, des Vorliegens von
    Zertifizierungen oder verbindlicher interner Datenschutzvorschriften,
    verarbeiten (Art. 44 bis 49 DSGVO, Informationsseite der EU-Kommission:
    <a
        href="https://ec.europa.eu/info/law/law-topic/data-protection/international-dimension-data-protection_de"
        target="_blank"
    >
        https://ec.europa.eu/info/law/law-topic/data-protection/international-dimension-data-protection_de
    </a>
    ).
</p>
<h2>
    Einsatz von Cookies
</h2>
<p>
    Als "Cookies“ werden kleine Dateien bezeichnet, die auf Geräten der Nutzer
    gespeichert werden. Mittels Cookies können unterschiedliche Angaben
    gespeichert werden. Zu den Angaben können z.B. die Spracheinstellungen auf
    einer Webseite, der Loginstatus, ein Warenkorb oder die Stelle, an der ein
    Video geschaut wurde, gehören.
</p>
<p>
    Cookies werden im Regelfall auch dann eingesetzt, wenn die Interessen eines
    Nutzers oder sein Verhalten (z.B. Betrachten bestimmter Inhalte, Nutzen von
    Funktionen etc.) auf einzelnen Webseiten in einem Nutzerprofil gespeichert
    werden. Solche Profile dienen dazu, den Nutzern z.B. Inhalte anzuzeigen,
    die ihren potentiellen Interessen entsprechen. Dieses Verfahren wird auch
    als "Tracking", d.h., Nachverfolgung der potentiellen Interessen der Nutzer
    bezeichnet. Zu dem Begriff der Cookies zählen wir ferner andere
    Technologien, die die gleichen Funktionen wie Cookies erfüllen (z.B., wenn
    Angaben der Nutzer anhand pseudonymer Onlinekennzeichnungen gespeichert
    werden, auch als "Nutzer-IDs" bezeichnet).
</p>
<p>
    Soweit wir Cookies oder "Tracking"-Technologien einsetzen, informieren wir
    Sie gesondert in unserer Datenschutzerklärung.
</p>
<p>
    <strong>Hinweise zu Rechtsgrundlagen: </strong>
    Auf welcher Rechtsgrundlage wir Ihre personenbezogenen Daten mit Hilfe von
    Cookies verarbeiten, hängt davon ab, ob wir Sie um eine Einwilligung
    bitten. Falls dies zutrifft und Sie in die Nutzung von Cookies einwilligen,
    ist die Rechtsgrundlage der Verarbeitung Ihrer Daten die erklärte
    Einwilligung. Andernfalls werden die mithilfe von Cookies verarbeiteten
    Daten auf Grundlage unserer berechtigten Interessen (z.B. an einem
    betriebswirtschaftlichen Betrieb unseres Onlineangebotes und dessen
    Verbesserung) verarbeitet oder, wenn der Einsatz von Cookies erforderlich
    ist, um unsere vertraglichen Verpflichtungen zu erfüllen.
</p>
<p>
    <strong>Widerruf und Widerspruch (Opt-Out): </strong>
    Unabhängig davon, ob die Verarbeitung auf Grundlage einer Einwilligung oder
    gesetzlichen Erlaubnis erfolgt, haben Sie jederzeit die Möglichkeit, eine
    erteilte Einwilligung zu widerrufen oder der Verarbeitung Ihrer Daten durch
    Cookie-Technologien zu widersprechen (zusammenfassend als "Opt-Out"
    bezeichnet).
</p>
<p>
    Sie können Ihren Widerspruch zunächst mittels der Einstellungen Ihres
    Browsers erklären, z.B., indem Sie die Nutzung von Cookies deaktivieren
    (wobei hierdurch auch die Funktionsfähigkeit unseres Onlineangebotes
    eingeschränkt werden kann).
</p>
<p>
    Ein Widerspruch gegen den Einsatz von Cookies zu Zwecken des
    Onlinemarketings kann mittels einer Vielzahl von Diensten, vor allem im
    Fall des Trackings, über die US-amerikanische Seite
    <a href="http://www.aboutads.info/choices/" target="_blank">
        http://www.aboutads.info/choices/
    </a>
    oder die EU-Seite
    <a href="http://www.youronlinechoices.com/" target="_blank">
        http://www.youronlinechoices.com/
    </a>
    oder generell auf
    <a href="http://optout.aboutads.info" target="_blank">
        http://optout.aboutads.info
    </a>
    erklärt werden.
</p>
<ul>
    <li>
        <strong>Verarbeitete Datenarten:</strong>
        Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten,
        Zugriffszeiten), Meta-/Kommunikationsdaten (z.B. Geräte-Informationen,
        IP-Adressen).
    </li>
    <li>
        <strong>Betroffene Personen:</strong>
        Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten).
    </li>
    <li>
        <strong>Rechtsgrundlagen:</strong>
        Einwilligung (Art. 6 Abs. 1 S. 1 lit. a DSGVO), Berechtigte Interessen
        (Art. 6 Abs. 1 S. 1 lit. f. DSGVO).
    </li>
</ul>
<h2>
    Kontaktaufnahme
</h2>
<p>
    Bei der Kontaktaufnahme mit uns (z.B. per Kontaktformular, E-Mail, Telefon
    oder via soziale Medien) werden die Angaben der anfragenden Personen
    verarbeitet, soweit dies zur Beantwortung der Kontaktanfragen und etwaiger
    angefragter Maßnahmen erforderlich ist.
</p>
<p>
    Die Beantwortung der Kontaktanfragen im Rahmen von vertraglichen oder
    vorvertraglichen Beziehungen erfolgt zur Erfüllung unserer vertraglichen
    Pflichten oder zur Beantwortung von (vor)vertraglichen Anfragen und im
    Übrigen auf Grundlage der berechtigten Interessen an der Beantwortung der
    Anfragen.
</p>
<p>
    <strong>Chat-Funktion</strong>
    : Zu Zwecken der Kommunikation und der Beantwortung von Anfragen bieten wir
    innerhalb unseres Onlineangebotes eine Chat-Funktion an. Die Eingaben der
    Nutzer innerhalb des Chats werden für Zwecke der Beantwortung ihrer
    Anfragen verarbeitet.
</p>
<ul>
    <li>
        <strong>Verarbeitete Datenarten:</strong>
        Bestandsdaten (z.B. Namen, Adressen), Kontaktdaten (z.B. E-Mail,
        Telefonnummern), Inhaltsdaten (z.B. Texteingaben, Fotografien, Videos).
    </li>
    <li>
        <strong>Betroffene Personen:</strong>
        Kommunikationspartner.
    </li>
    <li>
        <strong>Zwecke der Verarbeitung:</strong>
        Kontaktanfragen und Kommunikation.
    </li>
    <li>
        <strong>Rechtsgrundlagen:</strong>
        Vertragserfüllung und vorvertragliche Anfragen (Art. 6 Abs. 1 S. 1 lit.
        b. DSGVO), Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f. DSGVO).
    </li>
</ul>
<h2>
    Kommunikation via Messenger
</h2>
<p>
    Wir setzen zu Zwecken der Kommunikation Messenger-Dienste ein und bitten
    daher darum, die nachfolgenden Hinweise zur Funktionsfähigkeit der
    Messenger, zur Verschlüsselung, zur Nutzung der Metadaten der Kommunikation
    und zu Ihren Widerspruchsmöglichkeiten zu beachten.
</p>
<p>
    Sie können uns auch auf alternativen Wegen, z.B. via Telefon oder E-Mail,
    kontaktieren. Bitte nutzen Sie die Ihnen mitgeteilten Kontaktmöglichkeiten
    oder die innerhalb unseres Onlineangebotes angegebenen
    Kontaktmöglichkeiten.
</p>
<p>
    Im Fall einer Ende-zu-Ende-Verschlüsselung von Inhalten (d.h., der Inhalt
    Ihrer Nachricht und Anhänge) weisen wir darauf hin, dass die
    Kommunikationsinhalte (d.h., der Inhalt der Nachricht und angehängte
    Bilder) von Ende zu Ende verschlüsselt werden. Das bedeutet, dass der
    Inhalt der Nachrichten nicht einsehbar ist, nicht einmal durch die
    Messenger-Anbieter selbst. Sie sollten immer eine aktuelle Version der
    Messenger mit aktivierter Verschlüsselung nutzen, damit die Verschlüsselung
    der Nachrichteninhalte sichergestellt ist.
</p>
<p>
    Wir weisen unsere Kommunikationspartner jedoch zusätzlich darauf hin, dass
    die Anbieter der Messenger zwar nicht den Inhalt einsehen, aber in
    Erfahrung bringen können, dass und wann Kommunikationspartner mit uns
    kommunizieren sowie technische Informationen zum verwendeten Gerät der
    Kommunikationspartner und je nach Einstellungen ihres Gerätes auch
    Standortinformationen (sogenannte Metadaten) verarbeitet werden.
</p>
<p>
    <strong>Hinweise zu Rechtsgrundlagen: </strong>
    Sofern wir Kommunikationspartner vor der Kommunikation mit ihnen via
    Messenger um eine Erlaubnis bitten, ist die Rechtsgrundlage unserer
    Verarbeitung ihrer Daten deren Einwilligung. Im Übrigen, falls wir nicht um
    eine Einwilligung bitten und sie z.B. von sich aus Kontakt mit uns
    aufnehmen, nutzen wir Messenger im Verhältnis zu unseren Vertragspartnern
    sowie im Rahmen der Vertragsanbahnung als eine vertragliche Maßnahme und im
    Fall anderer Interessenten und Kommunikationspartner auf Grundlage unserer
    berechtigten Interessen an einer schnellen und effizienten Kommunikation
    und Erfüllung der Bedürfnisse unser Kommunikationspartner an der
    Kommunikation via Messengern. Ferner weisen wir Sie darauf hin, dass wir
    die uns mitgeteilten Kontaktdaten ohne Ihre Einwilligung nicht erstmalig an
    die Messenger übermitteln.
</p>
<p>
    <strong>Widerruf, Widerspruch und Löschung:</strong>
    Sie können jederzeit eine erteilte Einwilligung widerrufen und der
    Kommunikation mit uns via Messenger jederzeit widersprechen. Im Fall der
    Kommunikation via Messenger löschen wir die Nachrichten entsprechend
    unseren generellen Löschrichtlinien (d.h. z.B., wie oben beschrieben, nach
    Ende vertraglicher Beziehungen, im Kontext von Archivierungsvorgaben etc.)
    und sonst, sobald wir davon ausgehen können, etwaige Auskünfte der
    Kommunikationspartner beantwortet zu haben, wenn kein Rückbezug auf eine
    vorhergehende Konversation zu erwarten ist und der Löschung keine
    gesetzlichen Aufbewahrungspflichten entgegenstehen.
</p>
<p>
    <strong>Vorbehalt des Verweises auf andere Kommunikationswege:</strong>
    Zum Abschluss möchten wir darauf hinweisen, dass wir uns aus Gründen Ihrer
    Sicherheit vorbehalten, Anfragen über Messenger nicht zu beantworten. Das
    ist der Fall, wenn z.B. Vertragsinterna besonderer Geheimhaltung bedürfen
    oder eine Antwort über den Messenger den formellen Ansprüchen nicht genügt.
    In solchen Fällen verweisen wir Sie auf adäquatere Kommunikationswege.
</p>
<ul>
    <li>
        <strong>Verarbeitete Datenarten:</strong>
        Kontaktdaten (z.B. E-Mail, Telefonnummern), Nutzungsdaten (z.B.
        besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten),
        Meta-/Kommunikationsdaten (z.B. Geräte-Informationen, IP-Adressen).
    </li>
    <li>
        <strong>Betroffene Personen:</strong>
        Kommunikationspartner.
    </li>
    <li>
        <strong>Zwecke der Verarbeitung:</strong>
        Kontaktanfragen und Kommunikation, Direktmarketing (z.B. per E-Mail
        oder postalisch).
    </li>
    <li>
        <strong>Rechtsgrundlagen:</strong>
        Einwilligung (Art. 6 Abs. 1 S. 1 lit. a DSGVO), Berechtigte Interessen
        (Art. 6 Abs. 1 S. 1 lit. f. DSGVO).
    </li>
</ul>
<h2>
    Bereitstellung des Onlineangebotes und Webhosting
</h2>
<p>
    Um unser Onlineangebot sicher und effizient bereitstellen zu können, nehmen
    wir die Leistungen von einem oder mehreren Webhosting-Anbietern in
    Anspruch, von deren Servern (bzw. von ihnen verwalteten Servern) das
    Onlineangebot abgerufen werden kann. Zu diesen Zwecken können wir
    Infrastruktur- und Plattformdienstleistungen, Rechenkapazität,
    Speicherplatz und Datenbankdienste sowie Sicherheitsleistungen und
    technische Wartungsleistungen in Anspruch nehmen.
</p>
<p>
    Zu den im Rahmen der Bereitstellung des Hostingangebotes verarbeiteten
    Daten können alle die Nutzer unseres Onlineangebotes betreffenden Angaben
    gehören, die im Rahmen der Nutzung und der Kommunikation anfallen. Hierzu
    gehören regelmäßig die IP-Adresse, die notwendig ist, um die Inhalte von
    Onlineangeboten an Browser ausliefern zu können, und alle innerhalb unseres
    Onlineangebotes oder von Webseiten getätigten Eingaben.
</p>
<p>
    <strong>E-Mail-Versand und -Hosting</strong>
    : Die von uns in Anspruch genommenen Webhosting-Leistungen umfassen
    ebenfalls den Versand, den Empfang sowie die Speicherung von E-Mails. Zu
    diesen Zwecken werden die Adressen der Empfänger sowie Absender als auch
    weitere Informationen betreffend den E-Mailversand (z.B. die beteiligten
    Provider) sowie die Inhalte der jeweiligen E-Mails verarbeitet. Die
    vorgenannten Daten können ferner zu Zwecken der Erkennung von SPAM
    verarbeitet werden. Wir bitten darum, zu beachten, dass E-Mails im Internet
    grundsätzlich nicht verschlüsselt versendet werden. Im Regelfall werden
    E-Mails zwar auf dem Transportweg verschlüsselt, aber (sofern kein
    sogenanntes Ende-zu-Ende-Verschlüsselungsverfahren eingesetzt wird) nicht
    auf den Servern, von denen sie abgesendet und empfangen werden. Wir können
    daher für den Übertragungsweg der E-Mails zwischen dem Absender und dem
    Empfang auf unserem Server keine Verantwortung übernehmen.
</p>
<p>
    <strong>Erhebung von Zugriffsdaten und Logfiles</strong>
    : Wir selbst (bzw. unser Webhostinganbieter) erheben Daten zu jedem Zugriff
    auf den Server (sogenannte Serverlogfiles). Zu den Serverlogfiles können
    die Adresse und Name der abgerufenen Webseiten und Dateien, Datum und
    Uhrzeit des Abrufs, übertragene Datenmengen, Meldung über erfolgreichen
    Abruf, Browsertyp nebst Version, das Betriebssystem des Nutzers, Referrer
    URL (die zuvor besuchte Seite) und im Regelfall IP-Adressen und der
    anfragende Provider gehören.
</p>
<p>
    Die Serverlogfiles können zum einen zu Zwecken der Sicherheit eingesetzt
    werden, z.B., um eine Überlastung der Server zu vermeiden (insbesondere im
    Fall von missbräuchlichen Angriffen, sogenannten DDoS-Attacken) und zum
    anderen, um die Auslastung der Server und ihre Stabilität sicherzustellen.
</p>
<ul>
    <li>
        <strong>Verarbeitete Datenarten:</strong>
        Inhaltsdaten (z.B. Texteingaben, Fotografien, Videos), Nutzungsdaten
        (z.B. besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten),
        Meta-/Kommunikationsdaten (z.B. Geräte-Informationen, IP-Adressen).
    </li>
    <li>
        <strong>Betroffene Personen:</strong>
        Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten).
    </li>
    <li>
        <strong>Rechtsgrundlagen:</strong>
        Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f. DSGVO).
    </li>
</ul>
<h2>
    Plugins und eingebettete Funktionen sowie Inhalte
</h2>
<p>
    Wir binden in unser Onlineangebot Funktions- und Inhaltselemente ein, die
    von den Servern ihrer jeweiligen Anbieter (nachfolgend bezeichnet als
    "Drittanbieter”) bezogen werden. Dabei kann es sich zum Beispiel um
    Grafiken, Videos oder Social-Media-Schaltflächen sowie Beiträge handeln
    (nachfolgend einheitlich bezeichnet als "Inhalte”).
</p>
<p>
    Die Einbindung setzt immer voraus, dass die Drittanbieter dieser Inhalte
    die IP-Adresse der Nutzer verarbeiten, da sie ohne die IP-Adresse die
    Inhalte nicht an deren Browser senden könnten. Die IP-Adresse ist damit für
    die Darstellung dieser Inhalte oder Funktionen erforderlich. Wir bemühen
    uns, nur solche Inhalte zu verwenden, deren jeweilige Anbieter die
    IP-Adresse lediglich zur Auslieferung der Inhalte verwenden. Drittanbieter
    können ferner sogenannte Pixel-Tags (unsichtbare Grafiken, auch als "Web
    Beacons" bezeichnet) für statistische oder Marketingzwecke verwenden. Durch
    die "Pixel-Tags" können Informationen, wie der Besucherverkehr auf den
    Seiten dieser Webseite, ausgewertet werden. Die pseudonymen Informationen
    können ferner in Cookies auf dem Gerät der Nutzer gespeichert werden und
    unter anderem technische Informationen zum Browser und zum Betriebssystem,
    zu verweisenden Webseiten, zur Besuchszeit sowie weitere Angaben zur
    Nutzung unseres Onlineangebotes enthalten als auch mit solchen
    Informationen aus anderen Quellen verbunden werden.
</p>
<p>
    <strong>Hinweise zu Rechtsgrundlagen:</strong>
    Sofern wir die Nutzer um deren Einwilligung in den Einsatz der
    Drittanbieter bitten, ist die Rechtsgrundlage der Verarbeitung von Daten
    die Einwilligung. Ansonsten werden die Daten der Nutzer auf Grundlage
    unserer berechtigten Interessen (d.h. Interesse an effizienten,
    wirtschaftlichen und empfängerfreundlichen Leistungen) verarbeitet. In
    diesem Zusammenhang möchten wir Sie auch auf die Informationen zur
    Verwendung von Cookies in dieser Datenschutzerklärung hinweisen.
</p>
<ul>
    <li>
        <strong>Verarbeitete Datenarten:</strong>
        Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten,
        Zugriffszeiten), Meta-/Kommunikationsdaten (z.B. Geräte-Informationen,
        IP-Adressen).
    </li>
    <li>
        <strong>Betroffene Personen:</strong>
        Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten).
    </li>
    <li>
        <strong>Zwecke der Verarbeitung:</strong>
        Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit.
    </li>
</ul>
<h2>
    Löschung von Daten
</h2>
<p>
    Die von uns verarbeiteten Daten werden nach Maßgabe der gesetzlichen
    Vorgaben gelöscht, sobald deren zur Verarbeitung erlaubten Einwilligungen
    widerrufen werden oder sonstige Erlaubnisse entfallen (z.B., wenn der Zweck
    der Verarbeitung dieser Daten entfallen ist oder sie für den Zweck nicht
    erforderlich sind).
</p>
<p>
    Sofern die Daten nicht gelöscht werden, weil sie für andere und gesetzlich
    zulässige Zwecke erforderlich sind, wird deren Verarbeitung auf diese
    Zwecke beschränkt. D.h., die Daten werden gesperrt und nicht für andere
    Zwecke verarbeitet. Das gilt z.B. für Daten, die aus handels- oder
    steuerrechtlichen Gründen aufbewahrt werden müssen oder deren Speicherung
    zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen oder
    zum Schutz der Rechte einer anderen natürlichen oder juristischen Person
    erforderlich ist.
</p>
<p>
    Weitere Hinweise zu der Löschung von personenbezogenen Daten können ferner
    im Rahmen der einzelnen Datenschutzhinweise dieser Datenschutzerklärung
    erfolgen.
</p>
<h2>
    Änderung und Aktualisierung der Datenschutzerklärung
</h2>
<p>
    Wir bitten Sie, sich regelmäßig über den Inhalt unserer
    Datenschutzerklärung zu informieren. Wir passen die Datenschutzerklärung
    an, sobald die Änderungen der von uns durchgeführten Datenverarbeitungen
    dies erforderlich machen. Wir informieren Sie, sobald durch die Änderungen
    eine Mitwirkungshandlung Ihrerseits (z.B. Einwilligung) oder eine sonstige
    individuelle Benachrichtigung erforderlich wird.
</p>
<h2>
    Rechte der betroffenen Personen
</h2>
<p>
    Ihnen stehen als Betroffene nach der DSGVO verschiedene Rechte zu, die sich
    insbesondere aus Art. 15 bis 18 und 21 DS-GVO ergeben:
</p>
<ul type="disc">
    <li>
        <strong>
            Widerspruchsrecht: Sie haben das Recht, aus Gründen, die sich aus
            Ihrer besonderen Situation ergeben, jederzeit gegen die
            Verarbeitung der Sie betreffenden personenbezogenen Daten, die
            aufgrund von Art. 6 Abs. 1 lit. e oder f DSGVO erfolgt, Widerspruch
            einzulegen; dies gilt auch für ein auf diese Bestimmungen
            gestütztes Profiling. Werden die Sie betreffenden personenbezogenen
            Daten verarbeitet, um Direktwerbung zu betreiben, haben Sie das
            Recht, jederzeit Widerspruch gegen die Verarbeitung der Sie
            betreffenden personenbezogenen Daten zum Zwecke derartiger Werbung
            einzulegen; dies gilt auch für das Profiling, soweit es mit solcher
            Direktwerbung in Verbindung steht.
        </strong>
    </li>
    <li>
        <strong>Widerrufsrecht bei Einwilligungen:</strong>
        Sie haben das Recht, erteilte Einwilligungen jederzeit zu widerrufen.
    </li>
    <li>
        <strong>Auskunftsrecht:</strong>
        Sie haben das Recht, eine Bestätigung darüber zu verlangen, ob
        betreffende Daten verarbeitet werden und auf Auskunft über diese Daten
        sowie auf weitere Informationen und Kopie der Daten entsprechend den
        gesetzlichen Vorgaben.
    </li>
    <li>
        <strong>Recht auf Berichtigung:</strong>
        Sie haben entsprechend den gesetzlichen Vorgaben das Recht, die
        Vervollständigung der Sie betreffenden Daten oder die Berichtigung der
        Sie betreffenden unrichtigen Daten zu verlangen.
    </li>
    <li>
        <strong>Recht auf Löschung und Einschränkung der Verarbeitung:</strong>
        Sie haben nach Maßgabe der gesetzlichen Vorgaben das Recht, zu
        verlangen, dass Sie betreffende Daten unverzüglich gelöscht werden,
        bzw. alternativ nach Maßgabe der gesetzlichen Vorgaben eine
        Einschränkung der Verarbeitung der Daten zu verlangen.
    </li>
    <li>
        <strong>Recht auf Datenübertragbarkeit:</strong>
        Sie haben das Recht, Sie betreffende Daten, die Sie uns bereitgestellt
        haben, nach Maßgabe der gesetzlichen Vorgaben in einem strukturierten,
        gängigen und maschinenlesbaren Format zu erhalten oder deren
        Übermittlung an einen anderen Verantwortlichen zu fordern.
    </li>
    <li>
        <strong>Beschwerde bei Aufsichtsbehörde:</strong>
        Sie haben ferner nach Maßgabe der gesetzlichen Vorgaben das Recht, bei
        einer Aufsichtsbehörde, insbesondere in dem Mitgliedstaat Ihres
        gewöhnlichen Aufenthaltsorts, Ihres Arbeitsplatzes oder des Orts des
        mutmaßlichen Verstoßes, wenn Sie der Ansicht sind, dass die
        Verarbeitung der Sie betreffenden personenbezogenen Daten gegen die
        DSGVO verstößt.
    </li>
</ul>
<h2>
    Begriffsdefinitionen
</h2>
<p>
    In diesem Abschnitt erhalten Sie eine Übersicht über die in dieser
    Datenschutzerklärung verwendeten Begrifflichkeiten. Viele der Begriffe sind
    dem Gesetz entnommen und vor allem im Art. 4 DSGVO definiert. Die
    gesetzlichen Definitionen sind verbindlich. Die nachfolgenden Erläuterungen
    sollen dagegen vor allem dem Verständnis dienen. Die Begriffe sind
    alphabetisch sortiert.
</p>
<ul type="disc">
    <li>
        <strong>Personenbezogene Daten:</strong>
        "Personenbezogene Daten“ sind alle Informationen, die sich auf eine
        identifizierte oder identifizierbare natürliche Person (im Folgenden
        "betroffene Person“) beziehen; als identifizierbar wird eine natürliche
        Person angesehen, die direkt oder indirekt, insbesondere mittels
        Zuordnung zu einer Kennung wie einem Namen, zu einer Kennnummer, zu
        Standortdaten, zu einer Online-Kennung (z.B. Cookie) oder zu einem oder
        mehreren besonderen Merkmalen identifiziert werden kann, die Ausdruck
        der physischen, physiologischen, genetischen, psychischen,
        wirtschaftlichen, kulturellen oder sozialen Identität dieser
        natürlichen Person sind.
    </li>
    <li>
        <strong>Verantwortlicher:</strong>
        Als "Verantwortlicher“ wird die natürliche oder juristische Person,
        Behörde, Einrichtung oder andere Stelle, die allein oder gemeinsam mit
        anderen über die Zwecke und Mittel der Verarbeitung von
        personenbezogenen Daten entscheidet, bezeichnet.
    </li>
    <li>
        <strong>Verarbeitung:</strong>
        "Verarbeitung" ist jeder mit oder ohne Hilfe automatisierter Verfahren
        ausgeführte Vorgang oder jede solche Vorgangsreihe im Zusammenhang mit
        personenbezogenen Daten. Der Begriff reicht weit und umfasst praktisch
        jeden Umgang mit Daten, sei es das Erheben, das Auswerten, das
        Speichern, das Übermitteln oder das Löschen.
    </li>
</ul>

                            
                      
                    </asp:Panel>

    </div>
    </form>
</body>
</html>
