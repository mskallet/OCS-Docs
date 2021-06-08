---
uid: pi-to-ocs-architecture
---

# PI to OCS architecture

PI to OCS enables you to connect and transfer your on-prem data to OCS from one PI Data Archive and one optional Asset Framework (AF) server using one PI to OCS Agent. The PI to OCS Agent creates and sends a transfer that contains the requested PI point data (metadata and PI events) and assets (AF elements and attributes) to OCS.

![ ](../..\images\pi-ocs-architecture.png)



## Restrictions of PI to OCS architecture

These are some restrictions to the PI to OCS architecture:

* The connecting AF server must reference the connected PI Data Archive. The list of available PI Data Archive servers is based on what servers are referenced by elements on the AF server you selected.

* The same PI to OCS Agent is required to transfer data from the on-prem PI Data Archive and AF server.

## What AF data is transferred?

You can transfer the following AF element data into OCS:

<ul>
     <li>Simple PI point references</li>
    <li>Static attribute values</li></ul>
A simple PI point attribute consists of only a server and tag name. This data does not include any data retrieval qualifiers. The associated event data contains simple PI point attributes with the same historical and streaming transfer mechanism as points not associated with AF. 

This table lists the AF objects that can and cannot be included in a PI to OCS data transfer:

| AF Object              | Included in a PI to OCS transfer? |
| ---------------------- | --------------------------------- |
| Elements               | Yes                               |
| Attributes             | Yes                               |
| PI point references    | Yes                               |
| Constant values/string | Yes                               |
| Excluded attributes    | Yes                               |
| Formulas               | No                                |
| Event frames           | No                                |
| PI point arrays        | No                                |
| Hidden attributes      | No                                |



## Performance metrics: AF data transfer

The average data transfer rate is approximately 120-150 assets per second, and 1,000 assets per minute. Streams are created first and then AF element and asset data are transferred into OCS. If you use the same stream for various elements, the transfer time may be shorter.

**Note:** There may be some variance to these numbers.