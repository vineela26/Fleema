class Car < ApplicationRecord
  def self.probefahrt_pdf_html(car,cust)
    probefahrt_html = '<!DOCTYPE html>
<html>
   <head>
      <title>Autohandel Popal
</title>
   </head>
   <body style="margin:0; padding: 0; color: #000; font-family:Verdana, Arial, Helvetica, sans-serif; font-weight:500; background:#fff">
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" style="border:solid 0px #41719c; font-size:15px">
         <tr>
            <td height="100" colspan="3" align="right" style="font-size:18px; font-weight:bold; line-height:20px"> Autohandel Popal</td>
         </tr>

		 <tr>
            <td colspan="3" align="left" style="font-size:18px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="38%" align="left" valign="top" style="line-height:16px"><span style="font-size:12px; font-weight:bold">Grossmannstrasse 129 <br/>
20539 Hamburg<br/>
Deutschland<br/>
Telefon: +49 (0)40 78876837<br/>
Fax: +49 (0)40 78876891 </span></td>
                <td width="62%" align="left" valign="top"><span style="font-size:12px; line-height:20px">USt-IdNr: DE263671039</span></td>
              </tr>
            </table></td>
         </tr>
         <tr>
            <td height="40" colspan="3" align="right" style="font-size:18px; font-weight:bold; line-height:20px">
               <hr/>
           </td>
         </tr>
         <tr>
            <td height="50" colspan="3" align="left" valign="top" style="font-size:18px; line-height:20px"> Angaben zum Fahrer</td>
         </tr>
         <tr>
            <td colspan="4" align="left" valign="top" style="font-size:12px; line-height:20px">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                     <td width="50%" align="left" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                           <tr>
                              <td width="30%" align="left" valign="top">Name:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">'+"#{cust.first_name} #{cust.last_name}"+'</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Stra&szlig;e:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">PLZ Ort:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Land:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Tel.:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Mobil:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                        </table>
                     </td>
                     <td width="50%" align="left" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                           <tr>
                              <td width="30%" align="left" valign="top">Geboren am:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Ausweis-Nr.:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top"> F&uuml;hrerschein-Nr.:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">F&uuml;hrerschein ausgestellt am:</td>
                              <td width="60%" align="left" valign="top" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="10%" align="left" valign="top">&nbsp;</td>
                           </tr>
                        </table>
                     </td>
                  </tr>
               </table>
            </td>
         </tr>
         <tr>
            <td colspan="3" align="right" style="font-size:18px; font-weight:bold; line-height:20px; padding:10px 0">
               <hr/>
            </td>
         </tr>
         <tr>
            <td height="" colspan="3" align="left" style="font-size:18px; font-weight:bold; line-height:20px; padding-bottom:20px;">Probefahrt-Vereinbarung für folgendes Fahrzeug:</td>
         </tr>
         <tr>
            <td colspan="4" align="left" valign="top" style="font-size:12px; line-height:9px;">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                     <td width="50%" align="left" valign="top" style="border:solid 1px #000">
                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                           <tr>
                              <td width="30%" align="left" valign="top">Marke:</td>
                              <td width="62%" align="left" valign="top">Audi</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Modell:</td>
                              <td width="62%" align="left" valign="top">A8 4.2 quattro Langversion</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Kategorie:</td>
                              <td width="62%" align="left" valign="top">Limousine</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Erstzulassung:</td>
                              <td width="62%" align="left" valign="top">16.03.06</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Leistung:</td>
                              <td width="62%" align="left" valign="top">246 kW</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="30%" align="left" valign="top">Schadstoffklasse:</td>
                              <td width="62%" align="left" valign="top">Euro 4</td>
                              <td width="8%" align="left" valign="top">&nbsp;</td>
                           </tr>
                        </table>
                     </td>
                     <td height="45%" align="right" valign="top" >
                        <table width="98%" border="0" cellspacing="0" cellpadding="5" style="border-top:solid 1px #000">
                           <tr>
                              <td width="5%" align="left" valign="top">&nbsp;</td>
                              <td width="50%" height="30" align="left" valign="middle">Amtliches Kennzeichen :</td>
                              <td width="40%" height="30" align="left" valign="middle" style="border-bottom: dotted 1px #000 ">&nbsp;</td>
                              <td width="5%" align="left" valign="top">&nbsp;</td>
                           </tr>
                           <tr>
                              <td width="5%" align="left" valign="top">&nbsp;</td>
                              <td width="50%" align="left" valign="top">Sonstige Vereinbarungen: </td>
                              <td width="40%" align="left" valign="top">&nbsp; </td>
                              <td width="5%" align="left" valign="top">&nbsp;</td>
                           </tr>
                        </table>
                     </td>
                  </tr>
               </table>
            </td>
         </tr>
         <tr>
            <td colspan="3" align="left" valign="top" style="height:5px" ></td>
         </tr>
         <tr>
            <td height="60" colspan="3" align="left" valign="top" style="font-size:12px; line-height:20px; padding:5px; border:solid 1px
               #000000">
               <input type="checkbox" name="" />
               Das Fahrzeug ist vollkaskoversichert mit einer Selbstbeteiligung von  <span style="display:inline-block; border-bottom:solid 1px #000; width:75px"></span> . Bei selbstverschuldeten Schäden tragen Sie
               die Kosten in Höhe der Vollkasko-Selbstbeteiligung.
            </td>
         </tr>
         <tr>
            <td colspan="3" align="left" valign="top" style="height:5px" ></td>
         </tr>
         <tr>
            <td height="60" colspan="3" align="left" valign="top" style="font-size:12px; line-height:20px; padding:5px; border:solid 1px
               #000000">
               <input type="checkbox" name="" />
               Dem Fahrer wird oben genanntes Fahrzeug für eine Probefahrt zur Verfügung gestellt. Die Dauer der Probefahrt ist auf <span style="display:inline-block; border-bottom:solid 1px #000; width:75px"></span> Kilometer und maximal <span style="display:inline-block; border-bottom:solid 1px #000; width:75px"></span> Stunden nach Übernahme des Fahrzeuges beschränkt. Jeder Mehrkilometer wird mit  <span style="display:inline-block; border-bottom:solid 1px #000; width:75px"></span> berechnet. Der Fahrer bestätigt ausdrücklich, dass er im Besitz einer gültigen Fahrerlaubnis ist. Die Überlassung des Fahrzeuges an
               Dritte ist dem Fahrer untersagt. Der Verkäufer bestätigt die Einsichtnahme der Fahrerlaubnis und des Ausweises und hat Kopien für
               seine Unterlagen angefertigt. Im Fahrzeug besteht absolutes Rauchverbot! Bitte geben Sie das Fahrzeug voll <input type="checkbox" name="" />, 3/4 <input type="checkbox" name="" />, 1/2 <input type="checkbox" name="" />, 1/4 <input type="checkbox" name="" /> getankt zurück.
            </td>
         </tr>
         <tr>
            <td colspan="3" align="left" valign="top" style="height:5px" ></td>
         </tr>
         <tr>
            <td height="60" colspan="3" align="left" valign="top" style="font-size:12px;  line-height:20px; padding:5px; padding-top:15px;border:solid 1px
               #000000">
               <div>
                  <div style="width:39%; display:inline-block;vertical-align: top;">
                     Abfahrt <span style="display:inline-block; width:50px"></span>
                     <span style="display:inline-block; border-bottom:dotted 1px #000; width:170px"></span>
                  </div>
                  <div style="width:59%; display:inline-block;vertical-align: top;">
                     Kilometerstand (Abfahrt): <span style="display:inline-block; width:50px"></span>  <span style="display:inline-block; border-bottom:dotted 1px #000; width:200px"></span>
                  </div>
               </div>
               <div>
			   <div style="margin-top:10px">
                  <div style="display:inline-block;vertical-align: top;">
                     Beschädigung am Fahrzeug be <span style="display:inline-block; width:50px"></span>
                     <span style="display:inline-block; border-bottom:dotted 1px #000; width:473px"></span>
                  </div>

               </div>
			   <div> Übernahme <input type="checkbox" name="" /> Nein <input type="checkbox" name="" /> Ja
			   </div>
			   </div>
            </td>
         </tr>

         <tr>
            <td colspan="3" align="left" valign="top" style="font-size:12px; font-weight:bold; line-height:20px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="40%" height="40" align="left" valign="top" style="border-bottom:solid 1px #000">&nbsp;</td>
                <td width="20%" align="left" valign="top">&nbsp;</td>
                <td width="40%" align="left" valign="top" style="border-bottom:solid 1px #000">&nbsp;</td>
              </tr>
              <tr>
                <td width="40%" align="center" valign="top">Unterschrift Kunde</td>
                <td width="20%" align="center" valign="top">&nbsp;</td>
                <td width="40%" align="center" valign="top">Unterschrift Mitarbeiter</td>
              </tr>
            </table></td>
         </tr>
         <tr>
            <td colspan="3" align="left" valign="top" style="height:5px" ></td>
         </tr>
		 <tr>
            <td height="60" colspan="3" align="left" valign="top" style="font-size:12px;  line-height:20px; padding:5px; padding-top:15px;border:solid 1px
               #000000">
               <div>
                  <div style="width:39%; display:inline-block;vertical-align: top;">
                     Abfahrt <span style="display:inline-block; width:50px"></span>
                     <span style="display:inline-block; border-bottom:dotted 1px #000; width:170px"></span>
                  </div>
                  <div style="width:59%; display:inline-block;vertical-align: top;">
                     Kilometerstand (Abfahrt): <span style="display:inline-block; width:50px"></span>  <span style="display:inline-block; border-bottom:dotted 1px #000; width:200px"></span>
                  </div>
               </div>
               <div>
			   <div style="margin-top:10px">
                  <div style="display:inline-block;vertical-align: top;">
                     Beschädigung am Fahrzeug be <span style="display:inline-block; width:50px"></span>
                     <span style="display:inline-block; border-bottom:dotted 1px #000; width:473px"></span>
                  </div>

               </div>
			   <div> Übernahme <input type="checkbox" name="" /> Nein <input type="checkbox" name="" /> Ja
			   </div>
			   </div>
            </td>
         </tr>
		    <tr>
            <td colspan="3" align="left" valign="top" style="height:5px" ></td>
         </tr>
		 <tr>
            <td colspan="3" align="left" valign="top" style="font-size:12px; font-weight:bold; line-height:20px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="40%" height="40" align="left" valign="top" style="border-bottom:solid 1px #000">&nbsp;</td>
                <td width="20%" align="left" valign="top">&nbsp;</td>
                <td width="40%" align="left" valign="top" style="border-bottom:solid 1px #000">&nbsp;</td>
              </tr>
              <tr>
                <td width="40%" align="center" valign="top">Unterschrift Kunde</td>
                <td width="20%" align="center" valign="top">&nbsp;</td>
                <td width="40%" align="center" valign="top">Unterschrift Mitarbeiter</td>
              </tr>
            </table></td>
         </tr>
		 <tr>
            <td colspan="3" align="left" style="font-size:18px; font-weight:bold; height:30px; padding:10px 0">

            </td>
         </tr>



   </table>
   </body>
   </html'
    return probefahrt_html
  end
end
