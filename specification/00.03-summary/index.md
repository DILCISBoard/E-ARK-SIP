# Executive summary

According to the Open Archival Information System Reference Model (OAIS) every submission of information to an archive by a producer occurs as one or more discrete transmissions of submission information packages.  Unfortunately there is currently no central SIP format which would cover all national and business needs as identified in the E-ARK Report on Available Best Practices.  The E-ARK project acknowledged this problem and developed a solution in the form of the SIP format which is described in this document.

The first outcome of this work was Deliverable 3.2: E-ARK SIP Draft Specification.  This gives an overview of the structure and main metadata elements for the SIP and provides initial input for the technical implementations of pre-ingest and ingest tools. It was followed by Deliverable 3.3 which extends the previous one by providing a revised version of the D3.2 content, adding more details relevant for tool development and implementation, and describing specific profiles for the transfer of relational databases, electronic records management systems (ERMS) and simple file system based records (SFSB). 

The target group for this document are records creators, archival institutions and software providers creating or updating their SIP format specifications. This document is also important for electronic records management systems (ERMS) providers as it presents a standardised profile for exporting records and metadata out of their systems. 

This document provides an overview of:

- **The general structure for Submission Information Packages.**
This chapter explains how records creators should construct/structure their SIPs in order to meet the requirements of the SIP specification and achieve interoperability by following the common rules for all information packages (SIPs, AIPs, DIPs) as described in the Common Specification for Information Packages .
- **General SIP metadata.** This chapter provides a detailed overview of metadata sections and the metadata elements in these sections. The tables with all metadata elements could possibly be of interest to technical stakeholders who wish to implement the SIP.
- **Content Information Type Specifications.** This section introduces profiles for SMURF (Semantically Marked Up Records Format) and relational databases. The profiles themselves are separate documents.
- **The submission agreement.** This chapter provides an overview of submission agreement usages and recommended metadata elements.

