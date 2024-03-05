**Example:** METS example of altrecordID's, and SIP agents following the SIP profile as well as CS IP.

```xml
<mets:metsHdr
  CREATEDATE="2018-04-24T14:37:49.602+01:00"
  LASTMODDATE="2018-04-24T14:37:49.602+01:00"
  RECORDSTATUS="NEW"
  OAISPACKAGETYPE="SIP">

  <mets:agent ROLE="ARCHIVIST" TYPE="ORGANIZATION">
    <mets:name>The Swedish health agency</mets:name>
    <mets:note NOTETYPE="IDENTIFICATIONCODE">VAT:SE201345098701</mets:note>
  </mets:agent>

  <mets:agent ROLE="CREATOR" TYPE="ORGANIZATION">
    <mets:name>The agency, Personnel</mets:name>
    <mets:note NOTETYPE="IDENTIFICATIONCODE">VAT:SE2098109810-AF87</mets:note>
  </mets:agent>

  <mets:agent ROLE="OTHER" TYPE="INDIVIDUAL" OTHERROLE="SUBMITTER">
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
```
