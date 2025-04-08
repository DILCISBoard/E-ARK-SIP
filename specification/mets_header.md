## Extended use of the METS header (element `metsHdr`)

The `<metsHdr>` (METS header) element is a crucial part of the METS schema, providing metadata about the creation and management of the Submission Information Package (SIP). This element encapsulates information about various actors involved in the creation, preparation, and submission of the SIP. These actors are referred to as "agents" and are represented within the METS file by the `<agent>` element, which is nested within the `<metsHdr>` element.

This must not be confused with agents responsible for creating or contributing to the intellectual content carried within the SIP. Those contributors shall be documented in the descriptive metadata, also included in the package.

### Agents, roles and types

The Common Specification for Information Packages (CSIP) requires that every Information Package (IP) includes at least one `<agent>` element to identify the software used to create the package. This is defined in CSIP requirements 10 to 16.

In addition, the `mets/metsHdr/agent` element may be used to document organisations and individuals involved in the creation or submission of the SIP to an OAIS. Each agent must include its name, role, and type, and may also contain further contextual information if relevant.

This approach supports accountability and transparency in the SIP creation processes and assists the OAIS in providing feedback to producers during ingest, for example, by identifying issues in the SIP that may need correction or clarification.

The SIP specification enables implementers to describe several additional agents under the `mets/metsHdr` element. Each agent must have a distinct role (`mets/metsHdr/agent/@ROLE`). Options available for the `@ROLE` attribute include:

- **CREATOR** - The person or institution responsible for the creation of Submission Information Package.
- **EDITOR** - The person or institution responsible for preparing the metadata included in the Submission Information Package.
- **ARCHIVIST** - The person or institution responsible for the document/collection
- **PRESERVATION** - The person or institution responsible for preservation functions.
- **CUSTODIAN** - The person or institution charged with the oversight of a document/collection.
- **IPOWNER** - Intellectual Property Owner - The person or institution holding copyright, trade or service marks or other intellectual property rights for the object.
- **OTHER** - None of the preceding values encompasses the role of the agent. When OTHER is used one must set the OTHERROLE attribute.

Each `mets/metsHdr/agent` element may also have a type (`mets/metsHdr/agent/@TYPE`). The type of agent must be set to one of the following values:

- **INDIVIDUAL** - The agent is an individual person.
- **ORGANIZATION** - The agent is an institution, corporate body, association, non-profit enterprise, government, religious body, etc.
- **OTHER** - None of the preceding values encompasses the type of the agent with clarity. When OTHER is used one must set the OTHERTYPE attribute.

Please note that the SIP must include information about the agent that has submitted the SIP to the OAIS. This shall be encoded as follows:

```xml
<agent ROLE="OTHER" OTHERROLE="SUBMITTER" TYPE="ORGANIZATION">
    <name>Office of Personnel Management</name>
    <note csip:NOTETYPE="IDENTIFICATIONCODE">VAT:12443112345-A357</note>
</agent>
```

### Package status

The <metsHdr> element may also be used to indicate the expected behaviour of the OAIS while processing a given SIP. For example, it is possible to signal that a SIP is intended to replace an existing AIP in the repository by setting `mets/metsHdr/@RECORDSTATUS="REPLACEMENT"`, or to indicate that a SIP is submitted for testing purposes only, in which case no AIP should be created (`@RECORDSTATUS="TEST"`).

The complete list of values admissible for the `@RECORDSTATUS` attribute are:

- **NEW** - The SIP constitutes a new submission not previously delivered to the repository.
- SUPPLEMENT — The SIP supplements a previous submission by adding new or complementary information.
- **REPLACEMENT** - The SIP fully replaces a previous submission, typically correcting or updating its content.
- **TEST** - The SIP is submitted for testing purposes only and must not result in the creation of an AIP.
- **VERSION** - The SIP contains the same set of content files as a previous submission, but includes one or more files with updated versions.
- **DELETE** — A request from the Producer for the OAIS to delete an existing AIP from the repository.
- **OTHER** - The SIP has a status that does not match any of the predefined values in this vocabulary.

See the Package status vocabulary (`@RECORDSTATUS`) for further details.

### Submission agreement

The metsHdr element also provides a mechanism to identify the Submission Agreement that governs the creation of a given SIP. This is achieved using the `altRecordID` element with the attribute `mets/metsHdr/altRecordID/@TYPE="SUBMISSIONAGREEMENT"`. Declaring the applicable Submission Agreement ensures that the SIP can be validated against a known set of rules agreed between the Producer and the OAIS.

The table below outlines the key extensions in the use of the `mets/metsHdr` element between the E-ARK SIP and the Common Specification for Information Packages (CSIP).
