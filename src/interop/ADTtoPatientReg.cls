Class interop.ADTtoPatientReg Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, interop.PatientRegRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='interop.PatientRegRequest' sourceDocType='2.4:ADT_A01' create='new' language='objectscript' >
<assign value='source.{PID:PatientIdentifierList().ID}' property='target.PatientID' action='set' />
<assign value='source.{MSH:DateTimeOfMessage.timeofanevent}' property='target.RegDateTime' action='set' />
<assign value='source.{PID:PatientName().givenname}' property='target.FirstName' action='set' />
<assign value='source.{PID:AdministrativeSex}' property='target.Gender' action='set' />
<assign value='source.{PID:PatientName().familyname.surname}' property='target.LastName' action='set' />
</transform>
}

}
