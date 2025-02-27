## Extended use of the METS header (element `metsHdr`)

The `<metsHdr>` (METS header) element is a crucial part of the METS schema, providing metadata about the creation and management of the Submission Information Package (SIP). This element encapsulates information about various actors involved in the creation, preparation, and submission of the SIP. These actors are referred to as "agents" and are represented within the METS schema by the `<agent>` element, which is nested within the `<metsHdr>` element.

### Agents, roles and types

The Common Specification for Information Packages (CSIP) states that every Information Package (IP) must include at least one `<agent>` element to identify the software used to create the package. This is defined in the CSIP requirements 10 to 16.

Additionally, the `mets/metsHdr/agent` element can be used to include details about of each organisation or individual that had a role in the creation of the SIP or in the process of submitting the SIP to an OAIS. These details include the name of the agent, its role, its type, and further information, if necessary. This structured approach not only facilitates accountability and transparency but also enhances the metadata's for future archival processing and access.

The SIP specification enables implementers to add several agents to the `mets/metsHdr` element. Each agent must have a distinct role (`mets/metsHdr/agent/@ROLE`). Available options are:

- CREATOR - The person or institution responsible for the Submission Information Package.
- EDITOR - The person or institution responsible for preparing the metadata included in the package.
- ARCHIVIST - The person or institution responsible for the document/collection
- PRESERVATION - The person or institution responsible for preservation functions.
- CUSTODIAN - The person or institution charged with the oversight of a document/collection.
- IPOWNER - Intellectual Property Owner - The person or institution holding copyright, trade or service marks or other intellectual property rights for the object.
- OTHER - None of the preceding values encompasses the role of the agent. When OTHER is used one must set the OTHERROLE attribute.

Each `mets/metsHdr/agent` element may also have a type (`mets/metsHdr/agent/@TYPE`). The agent type must be set to one of the following values:

- INDIVIDUAL - The agent is an individual person.
- ORGANIZATION - The agent is an institution, corporate body, association, non-profit enterprise, government, religious body.
- OTHER - None of the preceding values encompasses the type of the agent. When OTHER is used one must set the OTHERTYPE attribute.

### How the OAIS should handle the SIP

The `<metsHdr>` may also be used to indicate the type of behaviour to be expected from the OAIS when processing a particular SIP. For example, one might indicate that one SIP should be used to replace a particular AIP in the repository (`mets/metsHdr/@RECORDSTATUS='REPLACEMENT'`) or that an SIP is meant for testing purposes and therefore it should not create an AIP at the end of the ingest process (`mets/metsHdr/@RECORDSTATUS='TEST'`). Additional options include "SUPPLEMENT", to extend a previous delivery and the possibility of requesting the OAIS to remove an existing AIP by setting the attribute `@RECORDSTATUS` to `DELETE` (see the vocabulary `metsHdr/@RECORDSTATUS`).

It is also in the `metsHdr` that the `Submission Agreement` to which a particular SIP conforms can be identified (see `mets/metsHdr/altrecordID/@TYPE=”SUBMISSIONAGREEMENT`).

The following table describes the differences in the `mets/metsHdr` between an E-ARK SIP and the CSIP.
