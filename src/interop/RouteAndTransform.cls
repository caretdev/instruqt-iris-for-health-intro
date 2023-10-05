/// 
Class interop.RouteAndTransform Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="" production="FHIRSERVERPKG.FoundationProduction">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value=""></constraint>
<constraint name="docCategory" value="2.4"></constraint>
<constraint name="docName" value="ADT_A01"></constraint>
<when condition="1" comment="">
<send transform="interop.RegADTtoUpdateADT" target="TCPOperation"></send>
<send transform="interop.UpdateADTtoLabORMDTL" target="ToLab"></send>
<send transform="interop.ADTtoPatientReg" target="ToTable"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
