# E-ARK SIP SPECIFICATION

```
Version: 2.0.0-DRAFT
Publication date: December 20, 2018
Author: Miguel Ferreira
Contritor: karin Bredenberg, Hélder Silva
```

## Front matter (TBD)

* Title page
* Authors and reviewers (past and present)
* Revision history and statement of originality
* Executive summary
* Acknowledgments

## Indexes (TBD)

* Table of contents
* List of tables
* List of figures



## Introduction

According to the Open Archival Information System Reference Model (OAIS) every submission of information to an archive occurs as one or more discrete transmissions of Submission Information Packages (SIP). Unfortunately, the OAIS itself does not specify how these information packages should look like. 

The EU funded E-ARK project (2014-2017) first acknowledged this problem and developed a solution in the form of a Format Specification. This specification is now part of a set of specifications currently managed by an independent body called the Digital Information LifeCycle Interoperability Standards Board ([DILCIS Board](http://www.dilcis.eu)).

### Scope and purpose 

This documents describes the correct way of producing and parsing E-ARK compatible Submission Information Packages (SIP). The main objectives of this specification are:

* To define the general structure for a Submission Information Package format in a way that it is suitable for a wide variety of archival scenarios, e.g. document and image collections, databases or geographical data;
* To recommend best practices regarding metadata, content and structure of SIPs.

### Target audience

The target audience for this specification are record creators, archival institutions and software providers that work on either end of the interaction between Producers and Archives. This includes mainly the OAIS functions pre-ingest and ingest.

### Relations to other E-ARK specifications

This document is part of a set of specifications that aim at defining a common understanding of the principles and requirements for interoperable Information Packages according to the OAIS reference model (see Figure).

The Common Specification for Information Packages (CS IP) identifies and standardises the common aspects of all information packages (Submission, Archival and Dissemination Information Packages, i.e. SIP, AIP and DIP, respectively) which are equally relevant and implemented by different functional entities of the overall digital preservation process (i.e. pre-ingest, ingest, long-term preservation and access). 

The CS IP is a separate independent document. The current SIP specification does not aim at largely repeating the information presented there – only the information that is absolutely necessary to understand the SIP specification will be mentioned in this document. This means that in order to fully understand this specification it is fundamental that the reader begins her journey by reading the Common Specification for Information Packages.

![Set of E-ARK Specifications](images/specificationset.png)

In general, the E-ARK SIP specification reuses and applies all the requirements laid out in the CS IP. However, it extends it with aspects that are solely relevant to the process of transmitting and ingesting submission information into an OAIS environment. For example, the E-ARK SIP specification extends the CS IP with further requirements about submission agreements and information about the actors involved in the submission process.

An additional concept is also part of this set of specifications. That is the Content Information Type Specifications. These are content-dependent specifications that include detailed information on how content, metadata, and documentation for specific types of content (i.e. data) can to be handled within the packages. At the moment, there are 3 of such specifications:

* E-ARK ERMS: Content Information Type Specification for Electronic Records Management Systems. 
* E-ARK Geodata: Content Information Type specification for geospatial information;
* E-ARK SIARD (SIARD1, SIARD2 and SIARDDK): Content Information Type specification for the archiving, preservation and reuse of relational databases.

For more information on Content Information Type specifications, please refer to the Common Specification for Information Packages or the individual Content Information Type specification documents.


### Definition of a SIP

The OAIS reference model defines a SIP as:

> An Information Package that is delivered by the Producer to the OAIS for use in the construction or update of one or more AIPs and/or the associated Descriptive Information. 

The E-ARK SIP follows this definition and builds on top of the E-ARK Common Specification for Information Packages by extending it to support specific requirements related to the process of selecting, packaging, transmitting, receiving, validating and ingesting information originally maintained by a Producer. 

In summary, the SIP constitutes a package of information that is ready to be sent by a Producer and ingested by the OAIS.

### Related work

This document is based on or influenced by the following documents and best practices:

* E-ARK Deliverable D3.1 - Report on Available Best Practices, 2014, [http://eark-project.com/resources/project-deliverables/6-d31-e-ark-report-on-available-best-practices](http://eark-project.com/resources/project-deliverables/6-d31-e-ark-report-on-available-best-practices)
* E-ARK Deliverable D2.1 - General pilot model and use case definition, 2014, [http://eark-project.com/resources/project-deliverables/5-d21-e-ark-general-pilot-model-and-use-case-definition](http://eark-project.com/resources/project-deliverables/5-d21-e-ark-general-pilot-model-and-use-case-definition)
* FGS package structure,  2013, [https://riksarkivet.se/Media/pdf-filer/Projekt/FGS_Earkiv_Paket.pdf](https://riksarkivet.se/Media/pdf-filer/Projekt/FGS_Earkiv_Paket.pdf )
* Reference Model for an Open Archival Information System (OAIS), 2012, [http://public.ccsds.org/Pubs/650x0m2.pdf](http://public.ccsds.org/Pubs/650x0m2.pdf )  
* Producer-Archive Interface Methodology Abstract Standard (PAIMAS), 2004, [http://public.ccsds.org/Pubs/651x0m1.pdf](http://public.ccsds.org/Pubs/651x0m1.pdf)
* Producer-Archive Interface Specification (PAIS) – CCSDS, 2014, [http://public.ccsds.org/Pubs/651x1b1.pdf](http://public.ccsds.org/Pubs/651x1b1.pdf)
* e-SENS (Electronic Simple European Networked Services) project, [http://www.esens.eu/](http://www.esens.eu/ )
* E-ARK Deliverable D3.2  - SIP Draft Specification, 2015, [http://eark-project.com/resources/project-deliverables/17-d32-e-ark-sip-draft-specification](http://eark-project.com/resources/project-deliverables/17-d32-e-ark-sip-draft-specification)
* E-ARK Deliverable D3.3 - E-ARK SIP Pilot Specification, 2016, [http://eark-project.com/resources/project-deliverables/51-d33pilotspec](http://eark-project.com/resources/project-deliverables/51-d33pilotspec)

## Structure

The SIP specification follows a structure that is common to all Information Packages in the E-ARK set of specifications. The common structure is fully described in the Common Specification for Information Packages (see Section 4. CSIP structure).

In its simplest form, an SIP consists of metadata and zero or more representations (also composed of `data` and `metadata`) as seen in Figure 2. A package with zero representations means that it only includes metadata. This is a special type of Information Package that enables Producers to deliver updates to metadata of previously ingested packages.

![SIP data model](images/image2.png)

A representation is a set of files, including structural metadata, needed for a complete and reasonable rendition of an Intellectual Entity. For example, a journal article may be complete in one PDF file. This single file constitutes the representation. Another journal article may consist of one SGML file and two image files. These three files constitute the representation. A third article may be represented by one TIFF image for each of 12 pages plus an XML file of structural metadata showing the order of the pages. These 13 files constitute the representation (see PREMIS Data Dictionary, Version 3.0, 2015, http://www.loc.gov/standards/premis/v3/premis-3-0-final.pdf).

As one SIP can contain more than one representation of the same intellectual entity, representations MUST be place within distinct folders (i.e., `rep-001`, `rep-002`, `rep-n` under the ```representations``` folder). Metadata on the other hand, may exist within each representation folder or at the root level (next to the `representations` folder). Metadata can serve multiples purposes, being the most obvious one the support for discoverability of resources within the OAIS (i.e., descriptive metadata).

If metadata is stored at the package root level, then there is generaly no need to include a `metadata` folder at the representation level. In such cases, the `metadata` folder under representations is considered optional. The SIP also accounts for the following additional folders that can exist both at the root level or under the `representations` folder:

* `documentation` – for including additional documentation about the `data` included in the packafge (e.g. a data dictionary for a SIARD file);
* `schemas`  – for storing schemas of XML files included in the data or metadata.

![General SIP structure](images/fig_10_cs_ip_full.png "Example of the full use of the SIP structure.")

**Figure XX:** Example of the full use of the SIP structure

The details of the internal structure of an SIP including its `data` and `metadata` folders can be further specified by Submission Agreements. These can exist for a particular submission, a special collection or a specific Producer.


## METS

The METS (Metadata Encoding and Transmission Standard) is a standard for encoding descriptive, administrative, and structural metadata expressed using the XML Schema Language.

The METS Schema for an E-ARK SIP is the same as for an E-ARK AIP or a E-ARK DIP. The actual requirents of the METS used in the E-ARK SIP are defined in the Common Specification for Information Packages on section "5.3 Use of METS". However, there are some small differences between a METS instance of an E-ARK SIP and an E-ARK CS IP. Most of the differences consist of setting the values of particular attributes or elements, setting the terms of controlled vocabularies or making optional elements mandatory.

These differences are materialised by means of a METS profile. The SIP METS profile extends the CS IP METS profile. In this section we will only highlight the differences between the SIP METS and the CS IP METS XML document. In order to fully understand how to create or interpred a METS file included within a SIP, you should start by reading the CS IP.

### Extendend use of the METS root element (element `mets`)

The root of a METS document can contain a number of optional attributes, namespaces (`xmlns:`) and schema instance locations (`xsi:`) for external standards and a number of other elements as seen in the following table:

[Table missing. Automatically generated from SIP METS profile]

**Example**: METS root element example.

```xml
<mets 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:xlink="http://www.w3.org/1999/xlink" 
  xmlns="http://www.loc.gov/METS/" 

  PROFILE="http://www.dasboard.eu/specifications/sip/v03/METS.xml" 
  TYPE="ERMS" 
  OBJID="5d378f86-28a1-41d8-a2b9-264b10fbd511"  
  CONTENTTYPESPECIFICATION="SMURFERMS" 
  LABEL="METS file describing the SIP." 
  
  xsi:schemaLocation="http://www.loc.gov/METS/ schemas/METS.xsd http://www.w3.org/1999/xlink schemas/xlink.xsd"
  >
```


### Extendend use of the METS header (element `metsHdr`)

The METS header element `<metsHdr>` includes information about the creator of the submission package, the original creator of the data, contact information of the person delivering the SIP, among other entitues. These entities are typically called "Agents" (see element `metsHdr/agent`). 

The `metsHdr` is also used to indicate the type of behaviour to be expected from the OAIS when processing a particular SIP. For example, one might indicate that an SIP should be used to "replace" a particular AIP in the repository or that an SIP is for "testing" purpuses and therefore it should not create an AIP in the end of the ingest process (see atribute `metsHdr/@RECORDSTATUS`).


Its also in the `metsHdr` that one can identify the Submission Agreement to which a particular SIP pays respect to (see `metsHdr/altrecordID/@TYPE=”SUBMISSIONAGREEMENT`. 

The following table describes the main differences in the `metHdr` between an E-ARK SIP and the CS IP.

[Table missing. Automatically generated from SIP METS profile]

Example:

```xml
  <metsHdr CREATEDATE="2016-01-15T10:40:09" RECORDSTATUS="NEW" PACKAGETYPE="SIP">
    <agent TYPE="ARCHIVIST" ROLE="ORGANIZATION">
      <name>The Hungarian Ministry of Healthcare</name>
      <note>ORG:HU121345098701</note>
    </agent>
    <agent TYPE="CREATOR" ROLE="ORGANIZATION">
      <name> The Hungarian Health Agency</name>
      <note>ORG:HU891345098701</note>
    </agent>
    <agent TYPE="PRESERVATION" ROLE="ORGANIZATION">
      <name> National Archives of Hungary</name>
      <note>ORG:HU2010340987</note>
    </agent>
    <agent TYPE="OTHER" ROLE="CREATOR" OTHERTYPE="SOFTWARE">
      <name>SIP Creator</name>
      <note>VERSION=0.0.2</note>
    </agent>
  </metsHdr>
```

### Extendend use of the METS descriptive metadata section (element `dmdSec`)

The METS descriptive metadata section element `<dmdSec>` is responsible for recording descriptive metadata for all the data items available in the package. 

The SIP specification itself does not prescribe of any particular metadata format. It is a role of the OAIS and the Producer to set the rules that should be followed in what concerns descriptive metadata. These rules should be defined in the Submission Agreement. 

The SIP specification does not extend any of the requirements already defined by the Common Specification for Information Packages (For more information see section 5.3.3 of the CS IP)


### Extended use of METS administrative metadata section (element `amdSec`)

The METS administrative metadata element `<amdSec>` is used to reference technical and preservation metadata. 

Although seldom used, preservation metadata can be included in the SIP. The guide on [Using PREMIS with METS](https://www.loc.gov/standards/premis/premis-mets.html) recommends using the `<amdSec>` to reference PREMIS metadata. 

The SIP specification does not extend any of the requirements already defined by the Common Specification for Information Packages (For more information see section 5.3.4. of the CS IP)


### Extended use of the METS file section (element `fileSec`) 

The METS file section element `<fileSec>` is used to describe all components of the IP which have not been already included in the `amdSec` and `dmdSec` elements. 

For all files the location and checksum need to be available. Therefore the main purpose of the METS file section is to serve as a "table of contents" or "manifest" and allow validating the integrity of the files included into the package.

All files found in the submission package should be referenced once and only once in the METS-document describing the submission. The elements and attributes are the same regardless of the content type submitted.

The description of the files included the `data` and in the `documentation` folders should be placed in the `fileSec` element under one or more `fileGrp` elements. 

The following table describes the main differences in the `fileSec` between an E-ARK SIP and the CS IP.

[Table missing. Automatically generated from SIP METS profile]

Example of the <fileSec> element (root METS file):

```xml
<fileSec>
   <fileGrp USE="files root" ID="IDae911aa8-24f0-4bd8-a684-32044b89d687">
      <fileGrp USE="schemas" ID="IDae911aa8-24f0-4bd8-a684-32056b89d789">
         <file 
         		MIMETYPE="application/xsd" 
         		USE="Schema" 
         		CHECKSUMTYPE="SHA-256" 
         		CREATED="2015-12-04T09:59:45" 
         		CHECKSUM="41d38f0a204e7dbda2838d93ad8eb5cf6bed92acd9c2f06f497faf47722e990d" 
         		ID="ID04918b96-cf9f-41fa-ab13-3d550aaf94f5" 
         		SIZE="6814">

            <FLocat 
            		xlink:href="file://schemas/METS.xsd" 
            		xlink:type="simple" 
            		LOCTYPE="URL"/>
         </file>		
      </fileGrp>
      
      <fileGrp USE="representations" ID="IDae055ba8-24f0-4bd8-a684-32056b89d882">
         <fileGrp USE="representation123" ID="IDbc911aa8-24f0-4bd8-a684-32056b89d789">
            <file 
            		MIMETYPE="application/xml" 
            		USE="Representation METS" 
            		CHECKSUMTYPE="SHA-256" 
            		CREATED="2015-12-04T09:59:45" 
            		CHECKSUM="41d38f0a204e7dbda2838d93ad8eb5cf6bed92acd9c2f06f497faf47722e990d" 
            		ID="ID04918b96-cf9f-41fa-ab13-3d550aaf94f5" 
            		SIZE="6814">

               <FLocat 
               		xlink:href="file://representations/representation123/METS.xsd" 
               		xlink:type="simple" 
               		LOCTYPE="URL"/>
            </file>		
         </fileGrp>
      </fileGrp>

      <fileGrp USE="documentation" ID="ID7d136e4c-26fe-40da-85a2-67a42efd6b27">
      ...		
      </fileGrp>
   </fileGrp>
</fileSec>
```

Example of the <fileSec> element (representation METS file):

```xml 
<fileSec>
   <fileGrp USE="Files representation representation123" 
            ID="IDae911aa8-24f0-4bd8-a684-32044b89d687">

      <fileGrp USE="data" ID="IDae911aa8-24f0-4bd8-a684-321556389d687">
         <fileGrp USE="user-defined-data-subfolder" ID="IDae911aa8-24f0-4bd8-a684-32044b89d789">

            <file 
            		MIMETYPE="application/pdf" 
            		USE="data" 
            		CHECKSUMTYPE="SHA-256" 
            		CREATED="2015-12-04T09:59:45" 
            		CHECKSUM="41d38f0a204e7dbda2838d93ad8eb5cf6bed92acd9c2f06f497faf47722e990d" 
            		ID="ID04918b96-cf9f-41fa-ab13-3d550aaf94f5" 
            		SIZE="6814">

               <FLocat 
               		xlink:href="file://data/contentfile.pdf" 
               		xlink:type="simple" 
               		LOCTYPE="URL"/>
            </file>

         </fileGrp>
         ...
      </fileGrp>

      <fileGrp USE="documentation" ID="ID7d136e4c-26fe-40da-85a2-67a42efd6b27">
      ...		
      </fileGrp>

   </fileGrp>
</fileSec>
```

### Extended use of the METS structural map (element `structMap`)

The mandatory METS structural map element `<structMap>` is intended to provide an overview of components described in the METS document. It can also link the elements of that structure to associated content files and metadata. In CSIP the structMap describes the higher level structure of all the content in the root and may link to representations.

The SIP specification does not extend any of the requirements already defined by the Common Specification for Information Packages (For more information see section 5.3.6 of the CS IP)


## Content Information Type Specifications

The concept of Content Information Type Specification is essentially an extension method which allows for widening the interoperability scope of the E-ARK IPs into a content specific level. A Content Information Type can be understood as a category of Content Information, for example relational databases, scientific data or digitised maps. A Content Information Type Specification defines in technical terms how data and metadata (mainly in regard to the Information Object) must be formatted and placed within an Information Package in order to achieve interoperability in exchanging specific Content Information.

The SIP presents no extensions or exceptions to the concept of Content Information Type as it is formalised in the Common Specification for Information Packages. For more information on this subject, please see sections 1.2, 1.3 and 6.1 of the CS IP.

##	 Submission Agreement

Interactions between the OAIS and the Producers are often guided by a Submission Agreement, which establishes specific details  about those interactions such as the type of information expected to be submitted, the metadata the Producer is expected to deliver, the logistics of the actual transfer, and statements regarding access restrictions on the submitted material (Lavoie B, The Open Archival Information System (OAIS) Reference Model: Introductory Guide (2nd Edition), 2014, [http://www.dpconline.org/component/docman/doc_download/1359-dpctw14-02](http://www.dpconline.org/component/docman/doc_download/1359-dpctw14-02)).
 
Given the importance of the Submission Agreement, the E-ARK SIP specification provides a way of referring to it regardless of its form. A submission agreement can be delivered in digital (e.g. PDF or XML file) or in analogue forms (e.g. paper document). To better understand how one can reference the Submission Agreeement within the SIP, please see section about the `metsHdr`). 

According to the [PAIMAS, 2004](http://public.ccsds.org/Pubs/651x0m1.pdf) standard the submission agreement should include a complete and precise definition of:
 
- Information to be transferred (e.g., SIP contents, SIP packaging, data models, identification of the designated community, legal and contractual aspects);
- Transfer definition (e.g. specification of the OAIS Data Submission Sessions);
- Validation definition;
- Change management (e.g. conditions for modification of the agreement, for breaking the agreement);
- Schedule (submission timetable).

This specification includes a recommendation of a machine-readable format for Submission Agreements (See Appendix A), but it does not mandate its use or in any way forbids the use of any other Submission Agreement formats.

The recommended submission agreement is inspired by the PAIMAS requirements and the [submission agreement template](https://www.ngdc.noaa.gov/wiki/images/f/f4/NOAA_Sub_Agreement.docx) provided by the National Oceanic and Atmospheric Administration (NOAA).


## Appendices
 
### Appendix A: Submission Agreement Template

#### Project information

* **Project** -	Elements of a transfer project.
	* 	**Project Name**	 - Name of the transfer project (e.g. Transfer I, 2016).
	* 	**Project ID** - Identification code of the transfer project (e.g. 201601122044).


#### Change management

* **Version/Revision** - Elements for tracking the changes in versions of the submission agreement. 
	* **Release date** - The date of the version.
	* **Change authority** - The information about the person who changed the submission agreement (e.g. John Smith (The National Archives of Estonia)).
	* **Change description**	- A short textual description of the change.
	* **Section(s) affected**	- This element is meant for recording more detailed information about changes.

	
#### Producer, Archive and Designated Community

* **Producer Organization**	- Elements describing the Producer.
	* **Organization name** - **Elements describing the organisation**
	* **Main Contact** - Elements describing the main contact of the transfer project.
		* **Address** -	The address of the main contact.
		* **Telephone**	- The telephone number of the main contact.
		* **E-mail**	 - The e-mail of the main contact.
		* **Additional Information** - Meant for recording any additional information needed to describe the contact.
	* **Individual Contacts**	- Elements describing other individual contacts of the organization.
		* **Name** - 	The full name of the contact person.
		* **Role**	 - The role of the contact person.
		* **Telephone**	- The telephone number of the contact person.
		* **E-mail** - The e-mail of the contact person.
		* **Additional Information** - Meant for recording any additional information needed to describe the contact.
* **Archive Organization** - Elements describing the Archive.
	* **Organization name** - The official name of the organization
	* **Main Contact** - Elements describing the main contact of the transfer project.
		* **Address** - The address of the main contact.
		* **Telephone**	 - The telephone number of the main contact.
		* **E-mail** - The e-mail of the main contact.
		* **Additional Information**	 - Meant for recording any additional information needed to describe the contact.
	* **Individual Contacts**	 - Elements describing other individual contacts of the organization.
		* **Name** - The full name of the contact person.
		* **Role** - The role of the contact person.
		* **Telephone**	 - The telephone number of the contact person.
		* **E-mail** - 	The e-mail of the contact person.
		* **Additional Information**	 - Element for recording any additional information needed to describe the contact.
* **Designated Community** - Elements describing the Designated Community.
	* **Description** - The textual description of the skills and knowledge base of the designated community. 
	* **Individual Contacts** - Elements describing the individual contacts of the designated community.
		* **Name** - The full name of the contact person.
		* **Role** - The role of the contact person.
		* **Telephone**	 - The telephone number of the contact person.
		* **E-mail**	 - The e-mail of the contact person.
		* **Additional Information**	 - Meant for recording any additional information needed to describe the contact.

#### Submission Information Package (SIP)

* **Content and metadata** - Elements describing the content and metadata of the submission information package.
	* **Description** - A description of data origination, content and coverage.
	* **Platform Information** - A short description of the source system.
	* **Representation Information** - A description of the means to represent the data content (e.g. referencing to data dictionaries, decoding software etc.).
	* **Preservation Descriptive Information** - A description for keeping data independently understandable (e.g. processing history, platform documentation, algorithm information, technical reports, user manuals, etc.).
	* **Supplemental Information** - Meant for recording any additional information needed to describe the content or metadata of the SIP.
	* **Access Constraints** - 	A description of access restrictions and other legal or contractual access aspects.
* **Data Model**  - 	Elements describing the agreements for the SIP data model.
	* **Content Type** - 	A short description of the content type (e.g. ERMS content).
	* **Reference** - 	A reference to the full agreed data model description.
	* **Additional Information** - 	A description of any other additional information (e.g. description of the physical folder structure of the SIP) related to the data model.

#### Submission Session Information

* **Submission Session** - Elements describing the agreements for the submission session.
	* **Submission Method** - The description of the submission method (e.g. through a digital interface, a physical transfer).
	* **Delivery Schedule** - A description of a delivery schedule (a submission session may have a routine or a complex schedule).
	* **Data Submission Inventory**	 - A description of the complete inventory of data objects (and other items) in the submission session.

#### Ingest

* **Submission Reception** - Elements describing the agreements for the ingest.
	* **Validation**	 - A description of procedures for the quality assurance.
	* **Error Handling** - A description of procedures for the error handling.
	* **Receipt Confirmation** - A description of the receipt confirmation.

#### Submission risks

* **Risks**	- Elements describing the risks and mitigation options of the submission.
	* **Risk Factor** - Meant for listing all risk factors (e.g. the designated community is not properly defined) of the submission.
	* **Mitigation Option** - Meant for listing all mitigation options (e.g. define the designated community together with producers) for the risks.


## Glossary

| Archival creator                     | An organization unit or individual that creates records and/or manages records during their active use.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|--------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Archive                              | An Organisation that intends to preserve information for Access and (re)use by a Designated Community.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Delivering organisation              | The organisation delivering an information package to the archive. For stating and extending the information use of the “Producer organisation name” and “Submitting organisation name” elements is recommended.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ERMS                                 | A type of content management software known as an Electronic Records Management System.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Information Package                  | A logical container composed of optional Content Information and optional associated Preservation Description Information. Associated with this Information Package is Packaging Information used to delimit and identify the Content Information and Package Description information used to facilitate searches for the Content Information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Ingest                               | The OAIS functional entity that contains the services and functions that accept Submission Information Packages from Producers, prepares Archival Information Packages for storage, and ensures that Archival Information Packages and their supporting Descriptive Information become established within the OAIS.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| OAIS                                 | The Open Archival Information System is an archive (and a standard: ISO 14721:2003), consisting of an organisation of people and systems that has accepted the responsibility to preserve information and make it available for a Designated Community.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Producing organisation               | The organizational unit or individual that has the authority to transfer records to an archive. Usually the producer is also the records creator  but this This is not always the case, sometimes the producer is different from the records creator.For example: An author dies and her literary executor gains the authority to transfer her papers to an archive. The author is the records creator and the literary executor is the producer. For example: Department X gets reorganized out of existence and Department Y, which takes over the functional responsibilities of Department X, gains the authority to transfer the records of Department X to the archive. Department X is the records creator and Department Y is the producer. Counter example: The Department of Widget Science transfers some of its own records to the archive. The Department of Widget Science is the records creator and the producer. |
| Submission Information Package (SIP) | An Information Package that is delivered by the Producer to the OAIS for use in the construction or update of one or more AIPs and/or the associated Descriptive Information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Submitting organisation              | Name of the organisation submitting the package to the archive. Extends the delivery information since it may be the case that the content of a creator is held by another part of the organisation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

## Bibliography

1.	A Checklist for Documenting PREMIS-METS Decisions in a METS Profile, 2010,
URL: [http://www.loc.gov/standards/premis/premis_mets_checklist.pdf](http://www.loc.gov/standards/premis/premis_mets_checklist.pdf)
2.	E-ARK Report on Available Best Practices, 2014, URL: [http://eark-project.com/resources/project-deliverables/6-d31-e-ark-report-on-available-best-practices](http://eark-project.com/resources/project-deliverables/6-d31-e-ark-report-on-available-best-practices)
3.	e-SENS (Electronic Simple European Networked Services) project, 2015,
URL: [http://www.esens.eu/](http://www.esens.eu/)
4.	Encoded Archival Context for Corporate Bodies, Persons, and Families, 2015, URL: [http://eac.staatsbibliothek-berlin.de](http://eac.staatsbibliothek-berlin.de)
5.	FGS packet structure,  2013, 
URL: [https://riksarkivet.se/Media/pdf-filer/Projekt/FGS_Earkiv_Paket.pdf](https://riksarkivet.se/Media/pdf-filer/Projekt/FGS_Earkiv_Paket.pdf)
6.	Guidelines for using PREMIS with METS for exchange, Revised September 17, 2008
URL: [http://www.loc.gov/standards/premis/guidelines-premismets.pdf](http://www.loc.gov/standards/premis/guidelines-premismets.pdf)
7.	Media Types, 2015, URL: [https://www.iana.org/assignments/media-types/media-types.xhtml](https://www.iana.org/assignments/media-types/media-types.xhtml)
8.	METS, 2015, URL: [http://www.loc.gov/standards/mets/](http://www.loc.gov/standards/mets/)
9.	METS Profile Components, 2011, URL: [http://www.loc.gov/standards/mets/profile_docs/components.html](http://www.loc.gov/standards/mets/profile_docs/components.html)
10.	METS Profiles, 2012, URL: [http://www.loc.gov/standards/mets/mets-profiles.html](http://www.loc.gov/standards/mets/mets-profiles.html)
11.	Producer, Submission Agreements: Glossary of Terms, 2015, URL: [http://sites.tufts.edu/dca/about-us/research-initiatives/taper-tufts-accessioning-program-for-electronic-records/project-documentation/submission-agreements-glossary-of-terms/](http://sites.tufts.edu/dca/about-us/research-initiatives/taper-tufts-accessioning-program-for-electronic-records/project-documentation/submission-agreements-glossary-of-terms/)
12.	Producer-Archive Interface Methodology Abstract Standard (PAIMAS), 2004,  
URL: [http://public.ccsds.org/Pubs/651x0m1.pdf](http://public.ccsds.org/Pubs/651x0m1.pdf)
13.	Producer-Archive Interface Specification (PAIS) – CCSDS, 2014,
URL: [http://public.ccsds.org/Pubs/651x1b1.pdf](http://public.ccsds.org/Pubs/651x1b1.pdf)
14.	Records Creator, Submission Agreements: [Glossary of Terms, 2015, URL: http://sites.tufts.edu/dca/about-us/research-initiatives/taper-tufts-accessioning-program-for-electronic-records/project-documentation/submission-agreements-glossary-of-terms/](http://sites.tufts.edu/dca/about-us/research-initiatives/taper-tufts-accessioning-program-for-electronic-records/project-documentation/submission-agreements-glossary-of-terms/)
15.	Reference Model for an Open Archival Information System (OAIS), 2012, 
URL: [http://public.ccsds.org/Pubs/650x0m2.pdf](http://public.ccsds.org/Pubs/650x0m2.pdf)