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



# Authors


| Name                             | Organisation                                       |
| -------------------------------- | -------------------------------------------------- |
| Tarvo Kärberg                    | National Archives of Estonia                       |
| Anders Bo Nielsen                | Danish National Archives                           |
| Björn Skog                       | ES Solutions                                       |
| Gregor Zavrsnik                  | Slovenian National Archives                        |
| Hélder Silva                     | KEEP SOLUTIONS                                     |
| Karin Bredenberg                 | National Archives of Sweden                        |
| Kathrine Hougaard Edsen Johansen | Danish National Archives                           |
| Levente Szilágyi                 | National Archives of Hungary                       |
| Phillip Mike Tømmerholt          | Danish National Archives                           |
| Miguel Ferreira                  | KEEP SOLUTIONS                                     |

Revision History
----------------

| Revision No. | Date       | Authors(s)                       | Organisation           | Description                                                           |
|--------------|------------|----------------------------------|------------------------|-----------------------------------------------------------------------|
| 0.1          | 20.10.2014 | Tarvo Kärberg                    | NAE                    | First draft.                                                          |
| 0.2          | 13.11.2014 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.3          | 02.12.2014 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.4          | 17.01.2015 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.5          | 21.01.2015 | Karin Bredenberg                 | ESS                    | Updating content.                                                     |
| 0.6          | 23.01.2015 | Anders Bo Nielsen                | DNA                    | Updating content.                                                     |
| 0.7          | 23.01.2015 | Kathrine Hougaard Edsen          | DNA                    | Updating content.                                                     |
| 0.71         | 26.01.2015 | Björn Skog                       | ESS                    | Updating content.                                                     |
| 0.72         | 27.01.2015 | Hélder Silva                     | KEEPS                  | Updating content.                                                     |
| 0.8          | 27.01.2015 | Angela Dappert                   | DLM/UPHEC              | Quality assurance and proof-reading.                                  |
| 0.9          | 29.01.2017 | Kuldar Aas                       | NAE                    | Quality assurance and proof-reading.                                  |
| 0.91         | 30.01.2015 | David Anderson                   | UPHEC                  | Quality assurance and proof-reading.                                  |
| 1.0          | 30.01.2015 | Tarvo Kärberg                    | NAE                    | Final version (D3.2).                                                 |
| 0.1          | 11.05.2015 | Karin Bredenberg                 | ESS/NAS                | Updating content.                                                     |
| 0.2          | 30.06.2015 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.3          | 27.07.2015 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.4          | 23.10.2015 | Tarvo Kärberg                    | NAE                    | Updating content, synchronising with the SMURF profile.               |
| 0.41         | 17.11.2015 | Tarvo Kärberg                    | NAE                    | Integrating the feedback.                                             |
| 0.42         | 07.12.2015 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.5          | 12.01.2016 | Tarvo Kärberg                    | NAE                    | Updating content, synchronising with the Common Specification.        |
| 0.6          | 15.01.2016 | Anders Bo Nielsen                | DNA                    | Updating content.                                                     |
| 0.61         | 15.01.2016 | Gregor Zavrsnik                  | SNA                    | Updating content.                                                     |
| 0.62         | 18.01.2016 | Tarvo Kärberg                    | NAE                    | Updating content.                                                     |
| 0.63         | 20.01.2016 | Phillip Mike Tømmerholt          | DNA                    | Updating content.                                                     |
| 0.64         | 25.01.2016 | Phillip Mike Tømmerholt          | DNA                    | Updating content.                                                     |
| 0.7          | 26.01.2016 | Sven Schlarb                     | AIT                    | Quality assurance and proof-reading.                                  |
| 0.8          | 27.01.2016 | Kuldar Aas                       | NAE                    | Quality assurance and proof-reading.                                  |
| 0.9          | 29.01.2016 | Andrew Wilson and David Anderson | University of Brighton | Quality assurance and proof-reading.                                  |
| 1.0          | 29.01.2016 | Tarvo Kärberg                    | NAE                    | Final version (general part of D3.3)                                  |
| 1.1          | 14.07.2016 | Tarvo Kärberg                    | NAE                    | Incorporating agreements made in the Common Specification work group. |
| 1.2          | 12.12.2016 | Tarvo Kärberg                    | NAE                    | Incorporating agreements made in the Common Specification work group. |
| 1.3          | 13.01.2017 | Tarvo Kärberg                    | NAE                    | Small updates.                                                        |
| 1.4          | 31.01.2017 | Tarvo Kärberg                    | NAE                    | Finalising the specification.                                         |
