<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Using OMF with Cloud Services </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Using OMF with Cloud Services ">
    <meta name="generator" content="docfx 2.39.2.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="../../index.html" width="46">
                <img id="logo" src="../../Documentation/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Cloud Serices"> 
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="omfIngressSpecification">
<h1 id="using-omf-with-cloud-services" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="5" sourceendlinenumber="6">Using OMF with Cloud Services</h1>

<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="8" sourceendlinenumber="10">The OMF specification (located <a href="http://omf-docs.osisoft.com" data-raw-source="[here](http://omf-docs.osisoft.com)" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="8" sourceendlinenumber="8">here</a>) is generic in that it does
not specify a particular back-end system. This topic is a companion to the OMF specification which describes how
OMF is interpreted by OSIsoft Cloud Services back-end system. </p>
<h2 id="headers" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="12" sourceendlinenumber="13">Headers</h2>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="15" sourceendlinenumber="18">A description of each of the headers can be found in the <a href="http://omf-docs.osisoft.com" data-raw-source="[OMF spec](http://omf-docs.osisoft.com)" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="15" sourceendlinenumber="15">OMF spec</a>. When 
sending messages to OSIsoft Cloud Services, the value of the <code>producertoken</code> header must be 
set to a security token obtained from the OCS Portal. The security token is used to authenticate 
the sender and to authorize the sender for use with a particular Tenant and Publisher.</p>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="20" sourceendlinenumber="21">The <code>omfversion</code> header must match the version of the OMF spec used to construct the message.
Version 1.1 of the spec is currently supported. </p>
<h2 id="message-types" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="23" sourceendlinenumber="24">Message Types</h2>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="26" sourceendlinenumber="26">OMF message types fall into three categories: Type, Container, and Data, which are described below. </p>
<ul sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="28" sourceendlinenumber="62">
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="28" sourceendlinenumber="48"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="28" sourceendlinenumber="28"><strong>Type messages</strong></p>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="30" sourceendlinenumber="32">A Type message is interpreted by OSIsoft Cloud Services as an SdsType in the OCS Data Store. 
Because SdsTypes are immutable, update operations are not supported. The keywords in the 
Type definition are interpreted as follows:</p>
<ul sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="34" sourceendlinenumber="42">
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="34" sourceendlinenumber="35"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="34" sourceendlinenumber="35"><code>id</code>: Corresponds to the SdsType Id field. It must conform to the rules defined for a 
typeId specified here: <a class="xref" href="../SequentialDataStore/SDS_Types.html" data-raw-source="[Types](xref:sdsTypes)" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="35" sourceendlinenumber="35">Types</a></p>
</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="37" sourceendlinenumber="37"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="37" sourceendlinenumber="37"><code>classification</code>: Only the <code>dynamic</code> classification is currently supported.</p>
</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="38" sourceendlinenumber="38"><code>version</code>: Versioning of SdsTypes is not supported.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="39" sourceendlinenumber="39"><code>name</code>: Corresponds to the SdsType Name field. This is the friendly name for the type.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="40" sourceendlinenumber="40"><code>description</code>: Corresponds to the SdsType Description field. </li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="41" sourceendlinenumber="41"><code>tags</code>: Currently unsupported.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="42" sourceendlinenumber="42"><code>metadata</code>: Currently unsupported.</li>
</ul>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="44" sourceendlinenumber="48">The <code>isindex</code> keyword corresponds to the <code>iskey</code> attribute of a SdsTypeProperty. 
SdsTypes support clustered indexes which can be specified with multiple properties marked 
with the <code>isindex</code> keyword with a value of <code>true</code>. For compound indexes, the 
index property order within the message corresponds to the <code>Order</code> field of 
an SdsTypeProperty. The <code>isname</code> keyword is not supported.</p>
</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="50" sourceendlinenumber="52"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="50" sourceendlinenumber="50"><strong>Link Type</strong></p>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="52" sourceendlinenumber="52">Link Types are not supported in OCS Data Store.</p>
</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="54" sourceendlinenumber="56"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="54" sourceendlinenumber="54"><strong>Span Type</strong></p>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="56" sourceendlinenumber="56">Span Types are not supported in OCS Data Store.</p>
</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="58" sourceendlinenumber="62"><p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="58" sourceendlinenumber="58"><strong>Property Types and Formats</strong></p>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="60" sourceendlinenumber="62">OMF supports setting the <code>format</code> keyword to specify how a particular JSON type should 
be interpreted. The following is a mapping for the OCS Data Store supported 
types (see <a class="xref" href="../SequentialDataStore/SDS_Types.html" data-raw-source="[Types](xref:sdsTypes)" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="62" sourceendlinenumber="62">Types</a>)</p>
</li>
</ul>
<table sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="65" sourceendlinenumber="80">
<thead>
<tr>
<th>Type</th>
<th>Format</th>
<th>SdsTypeCode</th>
</tr>
</thead>
<tbody>
<tr>
<td>array</td>
<td></td>
<td>IEnumerable</td>
</tr>
<tr>
<td>boolean</td>
<td></td>
<td>boolean</td>
</tr>
<tr>
<td>integer</td>
<td>int64</td>
<td>Int64</td>
</tr>
<tr>
<td>integer</td>
<td>int32</td>
<td>Int32</td>
</tr>
<tr>
<td>integer</td>
<td>int16</td>
<td>Int16</td>
</tr>
<tr>
<td>integer</td>
<td>uint64</td>
<td>Uint64</td>
</tr>
<tr>
<td>integer</td>
<td>uint32</td>
<td>Uint32</td>
</tr>
<tr>
<td>number</td>
<td>uint16</td>
<td>Uint16</td>
</tr>
<tr>
<td>number</td>
<td>float64</td>
<td>Double</td>
</tr>
<tr>
<td>number</td>
<td>float32</td>
<td>Single</td>
</tr>
<tr>
<td>number</td>
<td>float16</td>
<td>Single</td>
</tr>
<tr>
<td>object</td>
<td>dictionary</td>
<td>Idictionary</td>
</tr>
<tr>
<td>string</td>
<td></td>
<td>String</td>
</tr>
<tr>
<td>string</td>
<td>date-time</td>
<td>DateTime</td>
</tr>
</tbody>
</table>
<h2 id="container-messages" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="83" sourceendlinenumber="84">Container messages</h2>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="86" sourceendlinenumber="87">A Container message is interpreted as a SdsStream in the OCS Data Store. The keywords 
in the Container definition are interpreted as follows:</p>
<ul sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="89" sourceendlinenumber="96">
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="89" sourceendlinenumber="90"><code>id</code>: Corresponds to the SdsStream Id field. It must conform to the rules defined for
  an SdsStream Id specified here: <a class="xref" href="../SequentialDataStore/SDS_Streams.html#streams" data-raw-source="[Streams](xref:sdsStreams#streams)" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="90" sourceendlinenumber="90">Streams</a>.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="91" sourceendlinenumber="91"><code>typeid</code>: Corresponds to the SdsStream TypeId field.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="92" sourceendlinenumber="92"><code>typeversion</code>: Versioning of SdsTypes is not supported.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="93" sourceendlinenumber="93"><code>name</code>: Corresponds to the SdsStream Name field. This is a friendly name for the stream.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="94" sourceendlinenumber="94"><code>description</code>: Corresponds to the SdsStream Description field.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="95" sourceendlinenumber="95"><code>tags</code>: Corresponds to the SdsStream Tag field. </li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="96" sourceendlinenumber="96"><code>metadata</code>: Corresponds to the SdsStream Metadata field        </li>
</ul>
<h2 id="data-messages" sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="99" sourceendlinenumber="100">Data messages</h2>
<p sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="102" sourceendlinenumber="103">A Data message is mapped to generic Sds values in the OCS Data Store. The keywords in the 
Data definitions are interpreted as follows:</p>
<ul sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="105" sourceendlinenumber="108">
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="105" sourceendlinenumber="105"><code>typeid</code>: Data that is not grouped by containerId is not supported.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="106" sourceendlinenumber="106"><code>containerid</code>: Stream Id for the associated Sds Stream.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="107" sourceendlinenumber="107"><code>typeversion</code>: Not supported.</li>
<li sourcefile="Documentation/DataIngress/OMF_Ingress_Specification.md" sourcestartlinenumber="108" sourceendlinenumber="108"><code>values</code>: An array of the generic Sds values.</li>
</ul>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/OCS-Docs/blob/master/Documentation/DataIngress/OMF_Ingress_Specification.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
            <span id='copyright-text'>© 2019 - OSIsoft, LLC.<span>
        </span></span></div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>
