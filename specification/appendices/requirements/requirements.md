| ID | Name & Location | Description & usage | Cardinality & Level |
| -- | --------------- | ------------------- | ------------------- |
| <a name="SIP1"></a>**SIP1** | **Package name** <br/> `mets/@LABEL` | An optional short text describing the contents of the package, e.g. "Accounting records of 2017". | **0..1** <br/> MAY |
| <a name="SIP2"></a>**SIP2** | **METS Profile** <br/> `mets/@PROFILE` | The value is set to "https://earksip.dilcis.eu/profile/E-ARK-SIP.xml". | **1..1** <br/> MUST |
| <a name="SIP3"></a>**SIP3** | **Package status** <br/> `metsHdr/@RECORDSTATUS` | A way of indicating the status of the package and to instruct the OAIS on how to properly handle the package. If not set, the expected behaviour is equal to NEW. <br/> **See also:** <a href="#VocabularyRECORDSTATUS" >Package status</a> | **0..1** <br/> MAY |
| <a name="SIP4"></a>**SIP4** | **OAIS Package type information** <br/> `metsHdr/@csip:OAISPACKAGETYPE` | @csip:OAISPACKAGETYPE is used with the value "SIP". | **1..1** <br/> MUST |
| <a name="SIP5"></a>**SIP5** | **Submission agreement** <br/> `metsHdr/altrecordID` | A reference to the Submission Agreement associated with the package. <br/> @TYPE is used with the value "SUBMISSIONAGREEMENT". <br/> Example: RA 13-2011/5329; 2012-04-12 <br/> Example: http://submissionagreement.kb.se/dnr331-1144-2011/20120711/ <br/> Note: It is recommended to use a machine-readable format for a better description of a submission agreement. <br/> For example, the submission agreement developed by Docuteam GmbH  <br/> http://www.loc.gov/standards/mets/profiles/00000041.xml <br/> **See also:** <a href="#VocabularyaltrecordIDTYPE" >Alternative record ID's</a> | **0..1** <br/> MAY |
| <a name="SIP6"></a>**SIP6** | **Previous Submission agreement** <br/> `metsHdr/altrecordID` | An optional reference to a previous submission agreement(s) which the information may have belonged to. <br/> @TYPE is used with the value "PREVIOUSSUBMISSIONAGREEMENT". <br/> Example: FM 12-2387/12726, 2007-09-19 <br/> Example: http://submissionagreement.kb.se/dnr331-1144-2011/20120711/ <br/> Note: It is recommended to use a machine-readable format for a better description of a submission agreement. <br/> For example, the submission agreement developed by Docuteam GmbH  <br/> http://www.loc.gov/standards/mets/profiles/00000041.xml <br/> **See also:** <a href="#VocabularyaltrecordIDTYPE" >Alternative record ID's</a> | **0..*** <br/> MAY |
| <a name="SIP7"></a>**SIP7** | **Archival reference code** <br/> `metsHdr/altrecordID` | An optional reference code indicating where in the archival hierarchy the package shall be placed in the OAIS. <br/> @TYPE is used with the value "REFERENCECODE". <br/> Example: FM 12-2387/12726, 2007-09-19 <br/> **See also:** <a href="#VocabularyaltrecordIDTYPE" >Alternative record ID's</a> | **0..1** <br/> MAY |
| <a name="SIP8"></a>**SIP8** | **Previous archival reference code** <br/> `metsHdr/altrecordID` | In cases where the SIP originates from other institutions maintaining a reference code structure, this element can be used to record these reference codes and therefore support the provenance of the package when a whole archival description is not submitted with the submission. <br/> @TYPE is used with the value "PREVIOUSREFERENCECODE". <br/> Example: SE/FM/123/123.1/123.1.3 <br/> **See also:** <a href="#VocabularyaltrecordIDTYPE" >Alternative record ID's</a> | **0..*** <br/> MAY |
| <a name="SIP9"></a>**SIP9** | **Archival creator agent** <br/> `metsHdr/agent` | A wrapper element that enables to encode the name of the organisation or person that originally created the data being transferred. Please note that this might be different from the organisation which has been charged with preparing and sending the SIP to the archives. | **0..1** <br/> MAY |
| <a name="SIP10"></a>**SIP10** | **Archival creator agent role** <br/> `metsHdr/agent/@ROLE` | The role of the archival creator is "ARCHIVIST". | **1..1** <br/> MUST |
| <a name="SIP11"></a>**SIP11** | **Archival creator agent type** <br/> `metsHdr/agent/@TYPE` | The type of the archival creator agent is "ORGANIZATION" or "INDIVIDUAL". | **1..1** <br/> MUST |
| <a name="SIP12"></a>**SIP12** | **Archival creator agent name** <br/> `metsHdr/agent/name` | The name of the organisation(s) that originally created the data being transferred. <br/> Please note that this might be different from the organisation which has been charged with preparing and sending the SIP to the archives. | **0..*** <br/> MAY |
| <a name="SIP13"></a>**SIP13** | **Archival creator agent additional information** <br/> `metsHdr/agent/note` | The archival creator agent has a note providing a unique identification code for the archival creator. | **0..1** <br/> MAY |
| <a name="SIP14"></a>**SIP14** | **Classification of the archival creator agent additional information** <br/> `metsHdr/agent/note/@csip:NOTETYPE` | The archival creator agent note is typed with the value of "IDENTIFICATIONCODE". <br/> **See also:** <a href="#VocabularyNoteType" >Note type</a> | **1..1** <br/> MUST |
| <a name="SIP15"></a>**SIP15** | **Submitting agent** <br/> `metsHdr/agent` | The name of the organisation or person that submitting the package to the archive. | **1..1** <br/> MUST |
| <a name="SIP16"></a>**SIP16** | **Submitting agent role** <br/> `metsHdr/agent/@ROLE` | The role of the person(s) or institution(s) responsible for creating and/or submitting the package. | **1..1** <br/> MUST |
| <a name="SIP17"></a>**SIP17** | **Submitting agent type** <br/> `metsHdr/agent/@TYPE` | The type of the submitting agent is "ORGANIZATION" or "INDIVIDUAL". | **1..1** <br/> MUST |
| <a name="SIP18"></a>**SIP18** | **Submitting agent name** <br/> `metsHdr/agent/name` | Name of the organisation submitting the package to the archive. | **1..1** <br/> MAY |
| <a name="SIP19"></a>**SIP19** | **Submitting agent additional information** <br/> `metsHdr/agent/note` | The submitting agent has a note providing a unique identification code for the archival creator. | **0..1** <br/> MAY |
| <a name="SIP20"></a>**SIP20** | **Classification of the submitting agent additional information** <br/> `metsHdr/agent/note/@csip:NOTETYPE` | The submitting agent note is typed with the value of "IDENTIFICATIONCODE". <br/> **See also:** <a href="#VocabularyNoteType" >Note type</a> | **1..1** <br/> MUST |
| <a name="SIP21"></a>**SIP21** | **Contact person agent** <br/> `metsHdr/agent` | Contact person for the submission. | **0..*** <br/> MAY |
| <a name="SIP22"></a>**SIP22** | **Contact person agent role** <br/> `metsHdr/agent/@ROLE` | The role of the contact person is "CREATOR". | **1..1** <br/> MUST |
| <a name="SIP23"></a>**SIP23** | **Contact person agent type** <br/> `metsHdr/agent/@TYPE` | The type of the contact person agent is "INDIVIDUAL". | **1..1** <br/> MUST |
| <a name="SIP24"></a>**SIP24** | **Contact person agent name** <br/> `metsHdr/agent/name` | Name of the contact person. | **1..1** <br/> MUST |
| <a name="SIP25"></a>**SIP25** | **Contact person agent additional information** <br/> `metsHdr/agent/note` | The submitting agent has one or more notes giving the contact information. | **0..*** <br/> MAY |
| <a name="SIP26"></a>**SIP26** | **Preservation agent** <br/> `metsHdr/agent` | The organisation or person that preserves the package. | **0..1** <br/> MAY |
| <a name="SIP27"></a>**SIP27** | **Preservation agent role** <br/> `metsHdr/agent/@ROLE` | The role of the preservation agent is "PRESERVATION". | **1..1** <br/> MUST |
| <a name="SIP28"></a>**SIP28** | **Preservation agent type** <br/> `metsHdr/agent/@TYPE` | The type of the submitting agent is "ORGANIZATION". | **1..1** <br/> MUST |
| <a name="SIP29"></a>**SIP29** | **Preservation agent name** <br/> `metsHdr/agent/name` | Name of the organisation preserving the package. | **1..1** <br/> MAY |
| <a name="SIP30"></a>**SIP30** | **Preservation agent additional information** <br/> `metsHdr/agent/note` | The preservation agent has a note providing a unique identification code for the archival creator. | **0..1** <br/> MAY |
| <a name="SIP31"></a>**SIP31** | **Classification of the preservation agent additional information** <br/> `metsHdr/agent/note/@csip:NOTETYPE` | The preservation agent note is typed with the value of "IDENTIFICATIONCODE". <br/> **See also:** <a href="#VocabularyNoteType" >Note type</a> | **1..1** <br/> MUST |
| <a name="SIP32"></a>**SIP32** | **File format name** <br/> `fileSec/fileGrp/file/@sip:FILEFORMATNAME` | Follows the requirements in the CSIP profile. <br/> Follows the requirements in the CSIP profile. <br/> An optional attribute may be used if the MIMETYPE is not sufficient for the purposes of processing the information package. <br/> Example: "Extensible Markup Language" <br/> Example: "PDF/A" <br/> Example: "ISO/IEC 26300:2006" | **0..1** <br/> MAY |
| <a name="SIP33"></a>**SIP33** | **File format version** <br/> `fileSec/fileGrp/file/@sip:FILEFORMATVERSION` | The version of the file format when the use of PREMIS has not been agreed upon in the submission agreement. <br/> Example: "1.0" | **0..1** <br/> MAY |
| <a name="SIP34"></a>**SIP34** | **File format registry** <br/> `fileSec/fileGrp/file/@sip:FILEFORMATREGISTRY` | The name of the format registry used to identify the file format when the use of PREMIS has not been agreed upon in the submission agreement. <br/> Example: "PRONOM" | **0..1** <br/> MAY |
| <a name="SIP35"></a>**SIP35** | **File format registry key** <br/> `fileSec/fileGrp/file/@sip:FILEFORMATKEY` | Key of the file format in the registry when use of PREMIS has not been agreed upon in the submission agreement. <br/> Example: "fmt/101" | **0..1** <br/> MAY |
| <a name="dymmy3"></a>**dymmy3** | **Structural description of the package** <br/>  | Follows the requirements in the CSIP profile. |  <br/> MUST |
| <a name="dymmy4"></a>**dymmy4** | **structLink** <br/>  | Section not defined or used in CSIP or SIP, additional own uses may occur. |  <br/> MAY |
| <a name="dymmy5"></a>**dymmy5** | **behaviorSec** <br/>  | Section not defined or used in CSIP or SIP, additional own uses may occur. |  <br/> MAY |