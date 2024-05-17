## Extended use of the METS descriptive metadata section (element `dmdSec`)

The METS descriptive metadata section `<dmdSec>` is responsible for recording descriptive metadata for all the data items included in the package.

The SIP specification itself does not prescribe of any particular metadata format. It is a role of the OAIS together with the Producer to set the rules in terms of descriptive metadata. These rules should be set and agreed upon in the `Submission Agreement`.

In the context of the `<dmdSec>` element, the SIP specification does not change or extend any of the requirements already defined by the Common Specification for Information Packages (for more information see section 5.3.3 of the CSIP).

## Extended use of METS administrative metadata section (element `amdSec`)

The `<amdSec>` (administrative metadata section) in a METS document plays a crucial role in encapsulating or referencing the technical and preservation metadata related to a digital object or collection. This section is pivotal for maintaining the integrity, understanding, and long-term preservation of digital resources.

Preservation metadata, while not always found within Submission Information Packages, holds significant value, especially in recording the history of events affecting the state and stewardship of the information package. Preservation metadata is primarily associated with activities undertaken after a package's ingestion into a digital repository. However, certain preservation events, such as the digitization of analog materials, may occur prior to ingest and are thus relevant for inclusion within an SIP. Documenting such pre-ingest preservation activities provides a comprehensive record of the efforts taken to convert, preserve, and prepare digital objects for archiving and future access.

The [Using PREMIS with METS guide](https://www.loc.gov/standards/premis/premis-mets.html) by the Library of Congress offers detailed recommendations on how to effectively incorporate PREMIS metadata within a METS document, ensuring that vital preservation details are accurately represented and accessible.

In the context of `<amdSec>`, the SIP specification does not change or extend any of the requirements already defined by the Common Specification for Information Packages (for more information see section 5.3.4 of the CSIP).

## Extended use of the METS file section (element `fileSec`)

The METS file section element `<fileSec>` is used to describe all the components included in the information package which have not been already included in the `<amdSec>` and `<dmdSec>` elements.

The main purpose of the METS `<filSec>` element is to serve as a "table of contents" or "manifest" for all the files included in the package, thus allowing the OAIS to validate the integrity and completeness of the files that are part of the package.

This means that the location and checksum of all the files that compose the SIP must be enlisted within the `<fileSec>` element. This includes files in the `data`, `schemas` and in the `documentation` folders.

The following table describes the differences in the `<fileSec>` between an E-ARK SIP and the CSIP.

