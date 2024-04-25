## Extended use of the METS header (element `metsHdr`)

The `<metsHdr>` (METS header) element is a crucial part of the METS schema, providing metadata about the creation and management of the Submission Information Package (SIP). This element encapsulates information about various actors involved in the creation, preparation, and submission of the SIP. These actors are referred to as "agents" and are represented within the METS schema by the `<agent>` element, which is nested within the `<metsHdr>` element.

Each `<agent>` element can describe a range of roles and responsibilities associated with the SIP, including but not limited to:

- **CREATOR**: This refers to the organization or individual responsible for assembling the SIP and preparing it for submission. This agent is typically responsible for ensuring that the SIP conforms to the required standards and specifications.
- **ARCHIVIST**: This agent refers to the individual or organization responsible for the document/collection.. In many cases, this may be different from the creator of the SIP, especially if the SIP contains archived materials or data collected from various sources.
- **SUBMITTER**: This details the contact information for the individual or entity responsible for the actual submission of the SIP to the archive or repository. This information is crucial for communication purposes, especially if there are queries or issues related to the SIP.
- **PRESERVATION**: This details the contact information for the individual or entity responsible for preservation functions.
- **OTHER**: There can be additional agents involved in the lifecycle of the SIP, such as editors, publishers, or custodians, each playing a specific role in the creation, maintenance, or submission of the digital content.

The `metsHdr/agent` elements allow for the detailed documentation of each agent's role, name, note, and other identifiers, thereby providing a comprehensive record of all parties involved in the SIP's creation and management. This structured approach not only facilitates accountability and transparency but also enhances the metadata's richness and usefulness for future archival processing and access.

The `<metsHdr>` is also used to indicate the type of behaviour to be expected from the OAIS when processing a particular SIP. For example, one might indicate that an SIP should be used to "replace" a particular AIP in the repository or that an SIP is meant for "testing" purposes and therefore it should not create an AIP at the end of the ingest process (see attribute `metsHdr/@RECORDSTATUS`).

It is also in the `metsHdr` that the `Submission Agreement` to which a particular SIP conforms can be identified (see `metsHdr/altrecordID/@TYPE=”SUBMISSIONAGREEMENT`).

The following table describes the differences in the `metsHdr` between an E-ARK SIP and the CSIP.
