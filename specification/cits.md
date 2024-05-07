## Extended use of the METS structural map (element `structMap`)

The mandatory METS structural map element `<structMap>` is intended to provide an overview of the components included in the package. It can also link elements of that structure to associated content files and metadata. In the CSIP the `structMap` describes the higher-level structure of all the content in the root and may link to existing representations.

In the context of `<structMap>`, the SIP specification does not change or extend any of the requirements defined by the Common Specification for Information Packages (for more information see section 5.3.6 of the CSIP)

# Content Information Type Specifications (CITS)

The concept of Content Information Type Specifications (CITS) constitutes an extension method designed to improve the interoperability and adaptability of the E-ARK Information Packages (IPs) at a content-specific level. By introducing CITS, E-ARK provides detailed guidelines for handling various types of digital content within archival processes, ensuring that these diverse content types are managed, exchanged and preserved in a manner that is both standardized and tailored to their unique characteristics.

A Content Information Type can be understood as a category of Content Information, for example, relational databases, scientific data or digitised maps. A CITS defines in technical terms how data and metadata (mainly in regard to the Information Object) should be formatted and placed within an Information Package in order to achieve interoperability between different stakeholders.

The SIP specification does not introduce extensions or exceptions to the concept of Content Information Type as it is formalised in the Common Specification for Information Packages. More information on this subject can be found in sections 1.2, 1.3 and 6.1 of the CSIP.

## Submission Agreements

Interactions between Producers and the OAIS are often guided by a `Submission Agreement`, which establishes specific details about how these interactions should take place, e.g. the type of information expected to be exchanged, the metadata the Producer is expected to deliver, the logistics of the actual transfer, statements regarding access restrictions on the submitted material, etc.

Given the importance of `Submission Agreements`, the E-ARK SIP specification provides a way of referring such documents regardless of their form. A Submission Agreement can be delivered as a digital file (e.g. PDF or XML) or in analogue forms (i.e. paper document). More information about how to reference the Submission Agreement within the SIP can be found in the section dedicated to the `metsHdr` element.

According to [PAIMAS](https://public.ccsds.org/Pubs/651x0m1.pdf) ( Producer-Archive Interface Methodology Abstract Standard) a Submission Agreement should include a complete and precise definition of:

- Information to be transferred (e.g. SIP contents, SIP packaging, data models, identification of the designated community, legal and contractual aspects);
- Transfer definition (e.g. specification of the OAIS Data Submission Sessions);
- Validation definition;
- Change management (e.g. conditions for modification of the agreement, for breaking the agreement);
- Schedule (submission timetable).

This specification includes a list of semantic elements that should be present in a standard `Submission Agreement` (see Appendix A). The list of semantic elements is inspired by PAIMAS and the Submission Agreement provided by the National Oceanic and Atmospheric Administration (NOAA).

The E-ARK SIP specification does not require the use of any of these semantic elements or in any way forbids the use of other Submission Agreement formats. This list is merely a recommendation.
