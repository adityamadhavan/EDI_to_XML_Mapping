<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0" version="1.0" xmlns:ns0="http://EDI2XML.Schema1" xmlns:s0="http://schemas.microsoft.com/BizTalk/EDI/X12/2006">
  <xsl:import href="https://az818438.vo.msecnd.net/functoids/functoidsscript.xslt" />
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:X12_00403_852" />
  </xsl:template>
  <xsl:template match="/s0:X12_00403_852">
    <ns0:Products>
      <xsl:for-each select="ST">
        <TransactionSetHeader>
          <TransactionSetIdentifierCode>
            <xsl:value-of select="ST01/text()" />
          </TransactionSetIdentifierCode>
          <TransactionSetControlNumber>
            <xsl:value-of select="ST02/text()" />
          </TransactionSetControlNumber>
        </TransactionSetHeader>
      </xsl:for-each>
      <Date>
        <TransactionHandlingCode>
          <xsl:value-of select="s0:XQ/XQ01/text()" />
        </TransactionHandlingCode>
        <StartDate>
          <xsl:value-of select="s0:XQ/XQ02/text()" />
        </StartDate>
        <xsl:if test="s0:XQ/XQ03">
          <EndDate>
            <xsl:value-of select="s0:XQ/XQ03/text()" />
          </EndDate>
        </xsl:if>
      </Date>
      <xsl:for-each select="s0:XPO">
        <PreassignedPONumbers>
          <PurchaseOrderNumber>
            <xsl:value-of select="XPO01/text()" />
          </PurchaseOrderNumber>
        </PreassignedPONumbers>
      </xsl:for-each>
      <xsl:for-each select="s0:N9">
        <ReferenceInformation>
          <ReferenceIdentificationQualifier>
            <xsl:value-of select="N901/text()" />
          </ReferenceIdentificationQualifier>
          <xsl:if test="N902">
            <ReferenceIdenification>
              <xsl:value-of select="N902/text()" />
            </ReferenceIdenification>
          </xsl:if>
        </ReferenceInformation>
      </xsl:for-each>
      <xsl:for-each select="s0:N1Loop1">
        <Name>
          <EntityIdentifierCode>
            <xsl:value-of select="s0:N1/N101/text()" />
          </EntityIdentifierCode>
          <xsl:if test="s0:N1/N102">
            <Name>
              <xsl:value-of select="s0:N1/N102/text()" />
            </Name>
          </xsl:if>
        </Name>
      </xsl:for-each>
      <xsl:for-each select="s0:LINLoop1">
        <Product>
          <ProductIDQualifier>
            <xsl:value-of select="s0:LIN/LIN02/text()" />
          </ProductIDQualifier>
          <ProductID>
            <xsl:value-of select="s0:LIN/LIN03/text()" />
          </ProductID>
          <xsl:if test="s0:PO4/PO401">
            <Pack>
              <xsl:value-of select="s0:PO4/PO401/text()" />
            </Pack>
          </xsl:if>
          <xsl:for-each select="s0:CTP">
            <PricingInformation>
              <xsl:if test="CTP02">
                <PriceIdentificationType>
                  <xsl:value-of select="CTP02/text()" />
                </PriceIdentificationType>
              </xsl:if>
              <xsl:if test="CTP03">
                <UnitPrice>
                  <xsl:value-of select="CTP03/text()" />
                </UnitPrice>
              </xsl:if>
            </PricingInformation>
          </xsl:for-each>
          <xsl:for-each select="s0:ZALoop1">
            <ProductActivity>
              <ActivityReporting>
                <ActivityCode>
                  <xsl:value-of select="s0:ZA/ZA01/text()" />
                </ActivityCode>
                <xsl:if test="s0:ZA/ZA02">
                  <Quantity>
                    <xsl:value-of select="s0:ZA/ZA02/text()" />
                  </Quantity>
                </xsl:if>
                <xsl:if test="s0:ZA/ZA03">
                  <MeasurementCodeUnit>
                    <xsl:value-of select="s0:ZA/ZA03/text()" />
                  </MeasurementCodeUnit>
                </xsl:if>
                <xsl:if test="s0:ZA/ZA04">
                  <DateTimeQualifier>
                    <xsl:value-of select="s0:ZA/ZA04/text()" />
                  </DateTimeQualifier>
                </xsl:if>
                <xsl:if test="s0:ZA/ZA05">
                  <Date>
                    <xsl:value-of select="s0:ZA/ZA05/text()" />
                  </Date>
                </xsl:if>
              </ActivityReporting>
              <xsl:for-each select="s0:CTP_2">
                <PricingInformation_2>
                  <xsl:if test="CTP02">
                    <PriceIdentificationType_2>
                      <xsl:value-of select="CTP02/text()" />
                    </PriceIdentificationType_2>
                  </xsl:if>
                  <xsl:if test="CTP03">
                    <UnitPrice_2>
                      <xsl:value-of select="CTP03/text()" />
                    </UnitPrice_2>
                  </xsl:if>
                </PricingInformation_2>
              </xsl:for-each>
              <xsl:for-each select="s0:SDQ">
                <StoreInformation>
                  <MeasurementCode>
                    <xsl:value-of select="SDQ01/text()" />
                  </MeasurementCode>
                  <xsl:if test="SDQ02">
                    <BuyerIdentificationCode>
                      <xsl:value-of select="SDQ02/text()" />
                    </BuyerIdentificationCode>
                  </xsl:if>
                  <StoreCode1>
                    <xsl:value-of select="SDQ03/text()" />
                  </StoreCode1>
                  <Sales1>
                    <xsl:value-of select="SDQ04/text()" />
                  </Sales1>
                  <xsl:if test="SDQ05">
                    <StoreCode2>
                      <xsl:value-of select="SDQ05/text()" />
                    </StoreCode2>
                  </xsl:if>
                  <xsl:if test="SDQ06">
                    <Sales2>
                      <xsl:value-of select="SDQ06/text()" />
                    </Sales2>
                  </xsl:if>
                  <xsl:if test="SDQ07">
                    <StoreCode3>
                      <xsl:value-of select="SDQ07/text()" />
                    </StoreCode3>
                  </xsl:if>
                  <xsl:if test="SDQ08">
                    <Sales3>
                      <xsl:value-of select="SDQ08/text()" />
                    </Sales3>
                  </xsl:if>
                  <xsl:if test="SDQ09">
                    <StoreCode4>
                      <xsl:value-of select="SDQ09/text()" />
                    </StoreCode4>
                  </xsl:if>
                  <xsl:if test="SDQ10">
                    <Sales4>
                      <xsl:value-of select="SDQ10/text()" />
                    </Sales4>
                  </xsl:if>
                  <xsl:if test="SDQ11">
                    <StoreCode5>
                      <xsl:value-of select="SDQ11/text()" />
                    </StoreCode5>
                  </xsl:if>
                  <xsl:if test="SDQ12">
                    <Sales5>
                      <xsl:value-of select="SDQ12/text()" />
                    </Sales5>
                  </xsl:if>
                  <xsl:if test="SDQ13">
                    <StoreCode6>
                      <xsl:value-of select="SDQ13/text()" />
                    </StoreCode6>
                  </xsl:if>
                  <xsl:if test="SDQ14">
                    <Sales6>
                      <xsl:value-of select="SDQ14/text()" />
                    </Sales6>
                  </xsl:if>
                  <xsl:if test="SDQ15">
                    <StoreCode7>
                      <xsl:value-of select="SDQ15/text()" />
                    </StoreCode7>
                  </xsl:if>
                  <xsl:if test="SDQ16">
                    <Sales7>
                      <xsl:value-of select="SDQ16/text()" />
                    </Sales7>
                  </xsl:if>
                  <xsl:if test="SDQ17">
                    <StoreCode8>
                      <xsl:value-of select="SDQ17/text()" />
                    </StoreCode8>
                  </xsl:if>
                  <xsl:if test="SDQ18">
                    <Sales8>
                      <xsl:value-of select="SDQ18/text()" />
                    </Sales8>
                  </xsl:if>
                  <xsl:if test="SDQ19">
                    <StoreCode9>
                      <xsl:value-of select="SDQ19/text()" />
                    </StoreCode9>
                  </xsl:if>
                  <xsl:if test="SDQ20">
                    <Sales9>
                      <xsl:value-of select="SDQ20/text()" />
                    </Sales9>
                  </xsl:if>
                  <xsl:if test="SDQ21">
                    <StoreCode10>
                      <xsl:value-of select="SDQ21/text()" />
                    </StoreCode10>
                  </xsl:if>
                  <xsl:if test="SDQ22">
                    <Sales10>
                      <xsl:value-of select="SDQ22/text()" />
                    </Sales10>
                  </xsl:if>
                </StoreInformation>
              </xsl:for-each>
            </ProductActivity>
          </xsl:for-each>
        </Product>
      </xsl:for-each>
      <xsl:for-each select="s0:CTT">
        <TransactionTotals>
          <NumberOfLineItems>
            <xsl:value-of select="CTT01/text()" />
          </NumberOfLineItems>
          <xsl:if test="CTT02">
            <HashTotal>
              <xsl:value-of select="CTT02/text()" />
            </HashTotal>
          </xsl:if>
        </TransactionTotals>
      </xsl:for-each>
      <xsl:for-each select="SE">
        <TransactionSetTrailer>
          <NumberOfIncludedSegments>
            <xsl:value-of select="SE01/text()" />
          </NumberOfIncludedSegments>
          <TransactionSetControlNumber>
            <xsl:value-of select="SE02/text()" />
          </TransactionSetControlNumber>
        </TransactionSetTrailer>
      </xsl:for-each>
    </ns0:Products>
  </xsl:template>
</xsl:stylesheet>