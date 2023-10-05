Class interop.PatientRegOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method UpdatePatientReg(pInput As interop.PatientRegRequest, Output pOutput As Ens.Response) As %Status
{
	set newEntry =  ##class(User.PatientReg).%New()
	set newEntry.PatientID = pInput.PatientID
	set newEntry.RegDateTime = pInput.RegDateTime
	set newEntry.LastName = pInput.LastName
	set newEntry.FirstName = pInput.FirstName
	set newEntry.Gender = pInput.Gender
	set sc = newEntry.%Save()	
	quit sc
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="interop.PatientRegRequest">
        <Method>UpdatePatientReg</Method>
    </MapItem>
</MapItems>
}

}
