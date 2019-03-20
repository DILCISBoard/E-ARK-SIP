
**Example 1:** Example of a whole METS document describing an submission information package with no representations.

```xml
<mets:mets OBJID="uuid-4422c185-5407-4918-83b1-7abfa77de182" LABEL="Accounting records of 2017" TYPE="OTHER" OTHERTYPE="Accounting" PROFILE="https://earksip.dilcis.eu/profile/E-ARK-SIP.xml" schemaLocation="http://www.loc.gov/METS/ http://www.loc.gov/standards/mets/mets.xsd http://www.w3.org/1999/xlink http://www.loc.gov/standards/mets/xlink.xsd https://dilcis.eu/XML/METS/CSIPExtensionMETS https://dilcis.eu/XML/METS/CSIPExtensionMETS/DILCISExtensionMETS.xsd https://dilcis.eu/XML/METS/SIPExtensionMETS https://dilcis.eu/XML/METS/SIPExtensionMETS/SIPExtensionMETS.xsd">
  <mets:metsHdr CREATEDATE="2018-04-24T14:37:49.602+01:00" LASTMODDATE="2018-04-24T14:37:49.602+01:00" RECORDSTATUS="NEW" OAISPACKAGETYPE="SIP">
    <mets:agent ROLE="CREATOR" TYPE="OTHER" OTHERTYPE="SOFTWARE">
      <mets:name>RODA-in</mets:name>
      <mets:note NOTETYPE="SOFTWARE VERSION">2.1.0-beta.7</mets:note>
    </mets:agent>
    <mets:agent ROLE="ARCHIVIST" TYPE="ORGANIZATION">
      <mets:name>The Swedish health agency</mets:name>
      <mets:note NOTETYPE="IDENTIFICATIONCODE">VAT:SE201345098701</mets:note>
    </mets:agent>
    <mets:agent ROLE="CREATOR" TYPE="ORGANIZATION">
      <mets:name>The agency, Personnel</mets:name>
      <mets:note NOTETYPE="IDENTIFICATIONCODE">VAT:SE2098109810-AF87</mets:note>
    </mets:agent>
    <mets:agent ROLE="CREATOR" TYPE="INDIVIDUAL">
      <mets:name>Sven Svensson</mets:name>
      <mets:note>Phone: 08-123456, Email: sven.svensson@mail.mail</mets:note>
    </mets:agent>
    <mets:agent ROLE="PRESERVATION" TYPE="ORGANIZATION">
      <mets:name>The archives</mets:name>
      <mets:note NOTETYPE="IDENTIFICATIONCODE">ID:1234567</mets:note>
    </mets:agent>
    <mets:altrecordID TYPE="SUBMISSIONAGREEMENT">http://submissionagreement.kb.se/dnr331-1144-2011/20120711/</mets:altrecordID>
    <mets:altrecordID TYPE="PREVIOUSSUBMISSIONAGREEMENT">FM 12-2387/12726, 2007-09-19</mets:altrecordID>
    <mets:altrecordID TYPE="REFERENCECODE">SE/RA/123456/24/P</mets:altrecordID>
    <mets:altrecordID TYPE="PREVIOUSREFERENCECODE">SE/FM/123/123.1/123.1.3</mets:altrecordID>
  </mets:metsHdr>
  <mets:dmdSec ID="uuid-906F4F12-BA52-4779-AE2C-178F9206111F" CREATED="2018-04-24T14:37:49.609+01:00">
    <mets:mdRef LOCTYPE="URL" MDTYPE="EAD" MDTYPEVERSION="2002" type="simple" href="metadata/descriptive/ead2002.xml" SIZE="903" CREATED="2018-04-24T14:37:49.609+01:00" CHECKSUM="F24263BF09994749F335E1664DCE0086DB6DCA323FDB6996938BCD28EA9E8153" CHECKSUMTYPE="SHA-256">
    </mets:mdRef>
  </mets:dmdSec>
  <mets:amdSec>
    <mets:digiprovMD ID="uuid-9124DA4D-3736-4F69-8355-EB79A22E943F" CREATED="2018-04-24T14:37:52.783+01:00">
      <mets:mdRef LOCTYPE="URL" type="simple" href="metadata/preservation/premis1.xml" MDTYPE="PREMIS:EVENT" MDTYPEVERSION="3.0" MIMETYPE="text/xml" SIZE="1211" CREATED="2018-04-24T14:37:52.783+01:00" CHECKSUM="8aa278038dbad54bbf142e7d72b493e2598a94946ea1304dc82a79c6b4bac3d5" CHECKSUMTYPE="SHA-256" LABEL="premis1.xml">
      </mets:mdRef>
    </mets:digiprovMD>
    <mets:digiprovMD ID="uuid-48C18DD8-2561-4315-AC39-F941CBB138B3" CREATED="2018-04-24T14:47:52.783+01:00">
      <mets:mdRef LOCTYPE="URL" type="simple" href="metadata/preservation/premis2.xml" MDTYPE="PREMIS:OBJECT" MDTYPEVERSION="3.0" MIMETYPE="text/xml" SIZE="2854" CREATED="2018-04-24T14:37:52.783+01:00" CHECKSUM="d1dfa585dcc9d87268069dc58d5e47956434ec3db4087a75a3885d287f15126f" CHECKSUMTYPE="SHA-256" LABEL="premis2.xml">
      </mets:mdRef>
    </mets:digiprovMD>
  </mets:amdSec>
  <mets:fileSec ID="uuid-CA580D47-8C8B-4E91-ABD5-142EBBE15B84">
    <mets:fileGrp ID="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86H" USE="Documentation">
      <mets:file ID="uuid-0C0049CA-6DE0-4A6D-8699-7975E4046A81" MIMETYPE="application/vnd.openxmlformats-officedocument.wordprocessingml.document" SIZE="2554366" CREATED="2012-08-15T12:08:15.432+01:00" CHECKSUM="91B7A2C0A1614AA8F3DAF11DB4A1C981F14BAA25E6A0336F715B7C513E7A1557" CHECKSUMTYPE="SHA-256" FILEFORMATNAME="Microsoft Word for Windows" FILEFORMATVERSION="2007 onwards" FORMATREGISTRY="PRONOM" FORMATREGISTRYKEY="fmt/412">
        <mets:FLocat LOCTYPE="URL" type="simple" href="Documentation/File.docx">
        </mets:FLocat>
      </mets:file>
      <mets:file ID="uuid-0C0049CA-6DE0-4A6D-8699-7975E4046A82" MIMETYPE="application/vnd.openxmlformats-officedocument.wordprocessingml.document" SIZE="2554366" CREATED="2012-08-15T12:08:15.432+01:00" CHECKSUM="91B7A2C0A1614AA8F3DAF11DB4A1C981F14BAA25E6A0336F715B7C513E7A1557" CHECKSUMTYPE="SHA-256" FILEFORMATNAME="Microsoft Word for Windows" FILEFORMATVERSION="2007 onwards" FORMATREGISTRY="PRONOM" FORMATREGISTRYKEY="fmt/412">
        <mets:FLocat LOCTYPE="URL" type="simple" href="Documentation/File2.docx">
        </mets:FLocat>
      </mets:file>
    </mets:fileGrp>
    <mets:fileGrp ID="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86F" USE="Schemas">
      <mets:file ID="uuid-A1B7B0DA-E129-48EF-B431-E553F2977FD6" MIMETYPE="application/xml" SIZE="123917" CREATED="2018-04-24T14:37:49.617+01:00" CHECKSUM="0BF9E16ADE296EF277C7B8E5D249D300F1E1EB59F2DCBD89644B676D66F72DCC" CHECKSUMTYPE="SHA-256" FILEFORMATNAME="XML Schema Definition" FORMATREGISTRY="PRONOM" FORMATREGISTRYKEY="x-fmt/280">
        <mets:FLocat LOCTYPE="URL" type="simple" href="schemas/ead2002.xsd">
        </mets:FLocat>
      </mets:file>
    </mets:fileGrp>
    <mets:fileGrp ID="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86G" USE="Representations/Submission/Data" CONTENTINFORMATIONTYPE="SIARDDK">
      <mets:file ID="uuid-EE23344D-4F64-40C1-8E18-75839EF661FD" MIMETYPE="application/xml" SIZE="1338744" CREATED="2018-04-24T14:37:49.617+01:00" CHECKSUM="7176A627870CFA3854468EC43C5A56F9BD8B30B50A983B8162BF56298A707667" CHECKSUMTYPE="SHA-256" ADMID="uuid-48C18DD8-2561-4315-AC39-F941CBB138B3 uuid-9124DA4D-3736-4F69-8355-EB79A22E943F" FILEFORMATNAME="Extensible Markup Language" FILEFORMATVERSION="1.0" FORMATREGISTRY="PRONOM" FORMATREGISTRYKEY="fmt/101">
        <mets:FLocat LOCTYPE="URL" type="simple" href="representations/Submission/Data/SIARD.xml">
        </mets:FLocat>
      </mets:file>
    </mets:fileGrp>
  </mets:fileSec>
  <mets:structMap ID="uuid-1465D250-0A24-4714-9555-5C1211722FB8" TYPE="PHYSICAL" LABEL="CSIP StructMap">
    <mets:div ID="uuid-638362BC-65D9-4DA7-9457-5156B3965A18" LABEL="uuid-4422c185-5407-4918-83b1-7abfa77de182">
      <mets:div ID="uuid-A4E1C5B6-CD9B-43EF-8F0C-3FD3AB688F81" LABEL="Metadata" ADMID="uuid-9124DA4D-3736-4F69-8355-EB79A22E943F uuid-48C18DD8-2561-4315-AC39-F941CBB138B3" DMDID="uuid-906F4F12-BA52-4779-AE2C-178F9206111F">
      </mets:div>
      <mets:div ID="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86I" LABEL="Documentation" CONTENTIDS="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86H">
      </mets:div>
      <mets:div ID="uuid-26757DC2-4C0F-4431-85B5-5943D1AB5CA3" LABEL="Schemas" CONTENTIDS="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86F">
      </mets:div>
      <mets:div ID="uuid-35CB3341-D731-4AC3-9622-DB8901CD6736" LABEL="Representations" CONTENTIDS="uuid-4ACDC6F3-8A36-4A00-A85F-84A56415E86G">
      </mets:div>
    </mets:div>
  </mets:structMap>
</mets:mets>
```

