Class interop.RegADTtoUpdateADT Extends Ens.DataTransformDTL [ DependsOn = EnsLib.HL7.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EnsLib.HL7.Message' sourceDocType='2.4:ADT_A01' targetDocType='2.4:ADT_A01' create='copy' language='objectscript' >
<assign value='source.{MSH:ReceivingApplication}' property='target.{MSH:SendingApplication}' action='set' />
<assign value='source.{MSH:ReceivingFacility}' property='target.{MSH:SendingFacility}' action='set' />
<assign value='..CurrentDateTime()' property='target.{MSH:DateTimeOfMessage}' action='set' />
<assign value='source.{MSH:SendingFacility}' property='target.{MSH:ReceivingFacility}' action='set' />
<assign value='source.{MSH:SendingApplication}' property='target.{MSH:ReceivingApplication}' action='set' />
</transform>
}

}
