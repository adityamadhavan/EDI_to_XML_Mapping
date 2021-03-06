<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0" version="1.0" xmlns:ns0="http://EDI2XML.Schema1" xmlns:s0="http://schemas.microsoft.com/BizTalk/EDI/EDIFACT/2006">
  <xsl:import href="https://az818438.vo.msecnd.net/functoids/functoidsscript.xslt" />
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:EFACT_D93A_SLSRPT_EAN004" />
  </xsl:template>
  <xsl:template match="/s0:EFACT_D93A_SLSRPT_EAN004">
    <ns0:Products>
      <xsl:for-each select="UNH">
        <MessageHeader>
          <MessageReferenceNumber>
            <xsl:value-of select="UNH1/text()" />
          </MessageReferenceNumber>
          <MessageIdentifier>
            <MessageTypeIdentifier>
              <xsl:value-of select="UNH2/UNH2.1/text()" />
            </MessageTypeIdentifier>
            <MessageTypeVersionNumber>
              <xsl:value-of select="UNH2/UNH2.2/text()" />
            </MessageTypeVersionNumber>
            <MessageTypeReleaseNumber>
              <xsl:value-of select="UNH2/UNH2.3/text()" />
            </MessageTypeReleaseNumber>
            <ControllingAgency>
              <xsl:value-of select="UNH2/UNH2.4/text()" />
            </ControllingAgency>
            <xsl:if test="UNH2/UNH2.5">
              <AssociationAssignedCode>
                <xsl:value-of select="UNH2/UNH2.5/text()" />
              </AssociationAssignedCode>
            </xsl:if>
          </MessageIdentifier>
        </MessageHeader>
      </xsl:for-each>
      <BeginningOfMessage>
        <xsl:for-each select="s0:BGM/s0:C002">
          <MessageName>
            <xsl:if test="C00201">
              <MessageName>
                <xsl:value-of select="C00201/text()" />
              </MessageName>
            </xsl:if>
            <xsl:if test="C00203">
              <CodeListResponsibleAgency>
                <xsl:value-of select="C00203/text()" />
              </CodeListResponsibleAgency>
            </xsl:if>
          </MessageName>
        </xsl:for-each>
      </BeginningOfMessage>
      <xsl:for-each select="s0:DTM">
        <DateTimePeriod>
          <DateTimePeriodQualifier>
            <xsl:value-of select="s0:C507/C50701/text()" />
          </DateTimePeriodQualifier>
          <xsl:if test="s0:C507/C50702">
            <DateTimePeriod>
              <xsl:value-of select="s0:C507/C50702/text()" />
            </DateTimePeriod>
          </xsl:if>
          <xsl:if test="s0:C507/C50703">
            <DateTimePeriodFormatQualifier>
              <xsl:value-of select="s0:C507/C50703/text()" />
            </DateTimePeriodFormatQualifier>
          </xsl:if>
        </DateTimePeriod>
      </xsl:for-each>
      <xsl:for-each select="s0:NADLoop1">
        <Group1>
          <NameAndAddress>
            <PartyQualifier>
              <xsl:value-of select="s0:NAD/NAD01/text()" />
            </PartyQualifier>
            <PartyIdentificationDetails>
              <PartyIDIdentification>
                <xsl:value-of select="s0:NAD/s0:C082/C08201/text()" />
              </PartyIDIdentification>
              <xsl:if test="s0:NAD/s0:C082/C08203">
                <CodeListResponsibleAgency>
                  <xsl:value-of select="s0:NAD/s0:C082/C08203/text()" />
                </CodeListResponsibleAgency>
              </xsl:if>
            </PartyIdentificationDetails>
          </NameAndAddress>
        </Group1>
      </xsl:for-each>
      <xsl:for-each select="s0:LOCLoop1">
        <Group5>
          <PlaceLocationIdentification>
            <LocationQualifier>
              <xsl:value-of select="s0:LOC/LOC01/text()" />
            </LocationQualifier>
            <LocationIdentification>
              <xsl:if test="s0:LOC/s0:C517/C51701">
                <LocationIdentification>
                  <xsl:value-of select="s0:LOC/s0:C517/C51701/text()" />
                </LocationIdentification>
              </xsl:if>
              <xsl:if test="s0:LOC/s0:C517/C51702">
                <CodeListQualifier>
                  <xsl:value-of select="s0:LOC/s0:C517/C51702/text()" />
                </CodeListQualifier>
              </xsl:if>
              <xsl:if test="s0:LOC/s0:C517/C51703">
                <CodeListResponsibleAgency>
                  <xsl:value-of select="s0:LOC/s0:C517/C51703/text()" />
                </CodeListResponsibleAgency>
              </xsl:if>
            </LocationIdentification>
          </PlaceLocationIdentification>
          <xsl:for-each select="s0:LINLoop1">
            <Group6>
              <LineItem>
                <xsl:if test="s0:LIN/LIN01">
                  <LineItemNumber>
                    <xsl:value-of select="s0:LIN/LIN01/text()" />
                  </LineItemNumber>
                </xsl:if>
                <ItemNumberIdentification>
                  <xsl:if test="s0:LIN/s0:C212/C21201">
                    <ItemNumber>
                      <xsl:value-of select="s0:LIN/s0:C212/C21201/text()" />
                    </ItemNumber>
                  </xsl:if>
                  <xsl:if test="s0:LIN/s0:C212/C21202">
                    <ItemNumberType>
                      <xsl:value-of select="s0:LIN/s0:C212/C21202/text()" />
                    </ItemNumberType>
                  </xsl:if>
                  <xsl:if test="s0:LIN/s0:C212/C21204">
                    <CodeListResponsibleAgency>
                      <xsl:value-of select="s0:LIN/s0:C212/C21204/text()" />
                    </CodeListResponsibleAgency>
                  </xsl:if>
                </ItemNumberIdentification>
              </LineItem>
              <xsl:for-each select="s0:PIA">
                <AdditionalProductID>
                  <ProductIDFunctionQualifier>
                    <xsl:value-of select="PIA01/text()" />
                  </ProductIDFunctionQualifier>
                  <ItemNumberIDentification>
                    <xsl:if test="s0:C212_2/C21201">
                      <ItemNumber>
                        <xsl:value-of select="s0:C212_2/C21201/text()" />
                      </ItemNumber>
                    </xsl:if>
                    <xsl:if test="s0:C212_2/C21202">
                      <ItemNumberType>
                        <xsl:value-of select="s0:C212_2/C21202/text()" />
                      </ItemNumberType>
                    </xsl:if>
                  </ItemNumberIDentification>
                </AdditionalProductID>
              </xsl:for-each>
              <ItemDescription>
                <xsl:if test="s0:IMD/IMD01">
                  <ItemDescription>
                    <xsl:value-of select="s0:IMD/IMD01/text()" />
                  </ItemDescription>
                </xsl:if>
              </ItemDescription>
              <xsl:for-each select="s0:MOA">
                <MonetaryAmount>
                  <MonetaryAmountTypeQualifier>
                    <xsl:value-of select="s0:C516/C51601/text()" />
                  </MonetaryAmountTypeQualifier>
                  <xsl:if test="s0:C516/C51602">
                    <MonetaryAmount>
                      <xsl:value-of select="s0:C516/C51602/text()" />
                    </MonetaryAmount>
                  </xsl:if>
                </MonetaryAmount>
              </xsl:for-each>
              <xsl:for-each select="s0:QTY">
                <Quantity>
                  <QuantityQualifier>
                    <xsl:value-of select="s0:C186/C18601/text()" />
                  </QuantityQualifier>
                  <Quantity>
                    <xsl:value-of select="s0:C186/C18602/text()" />
                  </Quantity>
                </Quantity>
              </xsl:for-each>
            </Group6>
          </xsl:for-each>
        </Group5>
      </xsl:for-each>
      <xsl:for-each select="UNT">
        <MessageTrailer>
          <NoOfSegmentsInAMessage>
            <xsl:value-of select="UNT1/text()" />
          </NoOfSegmentsInAMessage>
          <MessageReferenceNumber>
            <xsl:value-of select="UNT2/text()" />
          </MessageReferenceNumber>
        </MessageTrailer>
      </xsl:for-each>
    </ns0:Products>
  </xsl:template>
</xsl:stylesheet>